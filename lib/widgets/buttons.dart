import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String label;
  final bool hide;
  final controller;
  CustomTextField(
      {super.key,
      required this.label,
      required this.hide,
      required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: hide,
      decoration: InputDecoration(
          labelText: label,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(20)),
          )),
    );
  }
}
