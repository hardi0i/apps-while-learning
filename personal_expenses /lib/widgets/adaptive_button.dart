import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AdaptiveButton extends StatelessWidget {
  final String text;
  final VoidCallback datePicker;
  const AdaptiveButton(this.text, this.datePicker);

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? CupertinoButton(
            child: Text(text, style: TextStyle(fontWeight: FontWeight.bold)),
            onPressed: datePicker)
        : TextButton(
            onPressed: datePicker,
            child: Text(
              text,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Theme.of(context).primaryColor,
              ),
            ),
          );
  }
}
