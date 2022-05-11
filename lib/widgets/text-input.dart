// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../palatte.dart';

class TextInputFeild extends StatelessWidget {
  const TextInputFeild({
    Key? key,
    required this.icon,
    required this.hint,
    required this.inputType,
    required this.inputAction,
    this.validator,
  }) : super(key: key);

  final IconData icon;
  final String hint;
  final TextInputType? inputType;
  final TextInputAction? inputAction;
  final String? Function(String?)? validator;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Container(
        height: size.height * 0.08,
        width: size.width * 0.9,
        decoration: BoxDecoration(
          color: Colors.grey[500]!.withOpacity(0.5),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Center(
          child: TextField(
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.symmetric(vertical: 20),
              border: InputBorder.none,
              hintText: hint,
              prefixIcon: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Icon(
                  icon,
                  color: Colors.white,
                  size: 30,
                ),
              ),
              hintStyle: kBodyText,
            ),
            style: kBodyText,
            keyboardType: inputType,
            textInputAction: inputAction,
          ),
        ),
      ),
    );
  }
}
