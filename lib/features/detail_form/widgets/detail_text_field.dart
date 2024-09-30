import 'package:flutter/material.dart';

class DetailTextField extends StatelessWidget {
  final TextEditingController controller;
  final String labelText;
  final String? Function(String?)? validator;
  final Function(String)? onChanged;
  final TextInputType keyboardType;

  const DetailTextField({
    Key? key,
    required this.controller,
    required this.labelText,
    this.validator,
    this.onChanged,
    this.keyboardType = TextInputType.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          labelText: labelText,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: theme.primaryColor),
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(color: theme.primaryColor),
          ),
          contentPadding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
        ),
        validator: validator,
        onChanged: onChanged,
        keyboardType: keyboardType,
      ),
    );
  }
}
