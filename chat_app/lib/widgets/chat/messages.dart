import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../chat/message_bubble.dart';

class Messages extends StatelessWidget {
  const Messages({super.key});

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser;
    return StreamBuilder(
      stream: FirebaseFirestore.instance
          .collection('chat')
          .orderBy(
            'createdAt',
            descending: true,
          )
          .snapshots(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else {
          final chatDocs = snapshot.data?.docs;
          return ListView.builder(
            reverse: true,
            itemCount: chatDocs?.length,
            itemBuilder: (context, i) {
              return MessageBubble(
                userImage: chatDocs?[i].data()['userImage'],
                username: chatDocs?[i].data()['username'],
                message: chatDocs?[i].data()['text'],
                isMe: chatDocs?[i].data()['userId'] == user!.uid,
                key: ValueKey(chatDocs?[i].id),
              );
            },
          );
        }
      },
    );
  }
}
