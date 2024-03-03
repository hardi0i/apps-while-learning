import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';

import './screens/chat_screen.dart';
import './screens/auth_screen.dart';
import './screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final Future<FirebaseApp> initialization = Firebase.initializeApp();
    return FutureBuilder(
      future: initialization,
      builder: (context, appSnapshot) {
        return MaterialApp(
          title: 'Chat app',
          theme: ThemeData(
            appBarTheme: const AppBarTheme(
              iconTheme: IconThemeData(
                color: Colors.red,
              ),
            ),
            primarySwatch: Colors.cyan,
            backgroundColor: Colors.cyan,
            colorScheme: ColorScheme.fromSwatch(
              primarySwatch: Colors.cyan,
            ).copyWith(
              secondary: const Color.fromARGB(
                255,
                172,
                205,
                255,
              ),
            ),
            elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.cyan,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                    20,
                  ),
                ),
              ),
            ),
          ),
          home: appSnapshot.connectionState != ConnectionState.done
              ? const SplashScreen()
              : StreamBuilder(
                  stream: FirebaseAuth.instance.authStateChanges(),
                  builder: (
                    ctx,
                    userSnapshot,
                  ) {
                    return userSnapshot.hasData
                        ? const ChatScreen()
                        : const AuthScreen();
                  },
                ),
        );
      },
    );
  }
}
