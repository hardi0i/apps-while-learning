import 'package:flutter/material.dart';
import '../widgets/persons_list.dart';
import '../widgets/custom_search_delegate.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Characters'),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            color: Colors.white,
            onPressed: () {
              showSearch(
                context: context,
                delegate: CustomSearchDelegate(),
              );
            },
          )
        ],
      ),
      body: PersonsList(),
    );
  }
}
