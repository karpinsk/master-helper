import 'package:flutter/material.dart';

class DetailFormButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final Icon? icon;
  final String label;
  final Color? backgroundColor;
  final Color? borderColor;
  final Color? textColor;

  const DetailFormButton({
    Key? key,
    required this.onPressed,
    required this.label,
    this.icon,
    this.backgroundColor,
    this.borderColor,
    this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: onPressed,
      icon: icon,
      label: Text(
        textAlign: TextAlign.center,
        label,
        style: TextStyle(color: textColor ?? borderColor),
      ),
      style: ElevatedButton.styleFrom(
        minimumSize: const Size.fromHeight(60),
        padding: const EdgeInsets.all(0),
        backgroundColor: backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(3),
        ),
        side: BorderSide(
          color: borderColor ?? Theme.of(context).primaryColor,
          width: 1.5,
        ),
      ),
    );
  }
}
