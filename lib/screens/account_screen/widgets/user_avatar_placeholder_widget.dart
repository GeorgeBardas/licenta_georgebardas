import 'package:flutter/material.dart';

class UserAvatarPlaceholderWidget extends StatelessWidget {
  const UserAvatarPlaceholderWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Icon(Icons.accessibility),
      ),
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.all(
          Radius.circular(25),
        ),
      ),
    );
  }
}
