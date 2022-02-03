import 'package:flutter/material.dart';
import 'package:licenta_georgebardas/utils/colors.dart';

class AccountScreenItemWidget extends StatelessWidget {
  const AccountScreenItemWidget({
    required this.icon,
    required this.title,
    required this.onTap,
    Key? key,
  }) : super(key: key);

  final String title;
  final Widget icon;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(
          top: 16,
          bottom: 16,
        ),
        child: Row(
          children: [
            Expanded(
              child: Row(
                children: [
                  SizedBox(width: 25),
                  icon,
                  SizedBox(width: 25),
                  Text(
                    title,
                    style: TextStyle(
                      color: AppColors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            Icon(
              Icons.arrow_forward_ios_outlined,
              size: 18,
            ),
            SizedBox(width: 25),
          ],
        ),
      ),
    );
  }
}
