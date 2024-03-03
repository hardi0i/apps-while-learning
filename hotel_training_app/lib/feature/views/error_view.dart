import 'package:flutter/material.dart';

class ErrorView extends StatelessWidget {
  const ErrorView({
    super.key,
    required this.error,
  });

  final String error;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.error_outline,
          ),
          Container(
            margin: const EdgeInsets.all(
              25.0,
            ),
            child: Text(error),
          ),
        ],
      ),
    );
  }
}
