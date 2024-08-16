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
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0), // Adds space below the button
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          minimumSize: const Size(double.infinity, 36), // Ensure button takes full width
          backgroundColor: const Color(0xFF4682B4), // Steel Blue
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => destination),
          );
        },
        child: Text(
          text,
          style: const TextStyle(fontSize: 28, color: Colors.white), // Adjust font size as needed
        ),
      ),
    );
  }
}
