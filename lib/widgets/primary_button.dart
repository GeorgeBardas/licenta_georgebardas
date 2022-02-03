import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    required this.text,
    this.onPressed,
    Key? key,
  }) : super(key: key);

  final String text;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        foregroundDecoration: onPressed == null
            ? BoxDecoration(
                color: Colors.grey,
                backgroundBlendMode: BlendMode.saturation,
                borderRadius: BorderRadius.all(Radius.circular(19)),
              )
            : null,
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.all(Radius.circular(19))),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 24, bottom: 24),
            child: Text(
              text,
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
