import 'package:flutter/material.dart';

class MenuButton extends StatelessWidget {
  final Widget destination;
  final String text;

  const MenuButton({
    Key? key,
    required this.destination,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          minimumSize: const Size(double.infinity, 36),
          backgroundColor: theme.primaryColor,
          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5))),
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => destination),
          );
        },
        child: Text(
          text,
          style: theme.textTheme.titleLarge,
        ),
      ),
    );
  }
}
