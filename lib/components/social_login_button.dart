import 'package:flutter/material.dart';

import 'pallate.dart';

class SocialButton extends StatelessWidget {
  final Widget icon;
  final String label;
  // final void Function() onPressed;
  final VoidCallback onPressed;
  final double horizontalPadding;
  const SocialButton({
    super.key,
    required this.icon,
    required this.label,
    required this.onPressed,
    this.horizontalPadding = 100,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      style: TextButton.styleFrom(
        padding: EdgeInsets.symmetric(
          horizontal: horizontalPadding,
          vertical: 30,
        ),
        backgroundColor: Pallete.backgroundColor,
        iconColor: Pallete.whiteColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: const BorderSide(
            color: Pallete.borderColor,
            width: 2,
          ),
        ),
      ),
      onPressed: onPressed,
      icon: icon,
      label: Text(
        label,
        style: const TextStyle(
          color: Pallete.whiteColor,
          fontSize: 17,
        ),
      ),
    );
  }
}
