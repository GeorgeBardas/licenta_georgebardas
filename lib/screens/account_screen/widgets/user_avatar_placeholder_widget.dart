import 'package:flutter/material.dart';

class UserAvatarPlaceholderWidget extends StatelessWidget {
  const UserAvatarPlaceholderWidget({
    this.userAvatar,
    this.onPressed,
    Key? key,
  }) : super(key: key);

  final String? userAvatar;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: userAvatar == null
          ? Container(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Icon(Icons.accessibility),
                // child: Image.network(),
              ),
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.all(
                  Radius.circular(25),
                ),
              ),
            )
          : ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Image.network(
                userAvatar!,
                height: 40,
                width: 40,
              ),
            ),
    );
  }
}
