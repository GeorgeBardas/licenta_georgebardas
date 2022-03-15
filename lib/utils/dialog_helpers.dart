import 'package:flutter/material.dart';

showDeleteDialog({
  required BuildContext context,
  required String title,
  required String body,
  required VoidCallback onPositivePressed,
}) =>
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: Text(title),
        content: new Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(body),
          ],
        ),
        actions: <Widget>[
          ElevatedButton(
            onPressed: () {
              onPositivePressed.call();
              Navigator.of(context).pop();
            },
            child: const Text('DA'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text('NU'),
          ),
        ],
      ),
    );
