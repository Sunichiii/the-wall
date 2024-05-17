import 'dart:ui';

import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final String hintText;
  final bool obscureText;
  final TextEditingController controller;
  final Color? hintTextColor;

  const MyTextField({
    super.key,
    required this.controller,
    required this.obscureText,
    required this.hintText,
    required this.hintTextColor,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      style: const TextStyle(color: Colors.white),
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        hintText: hintText,
        hintStyle: TextStyle(
          color: hintTextColor ?? Colors.grey,
        )

      ),
      obscureText: obscureText,
    );
  }
}
