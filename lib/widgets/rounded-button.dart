// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

import '../palatte.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton({
    Key? key,
    required this.buttonName,
  }) : super(key: key);

  final String buttonName;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.08,
      width: size.width * 0.9,
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(16),
      ),
      child: FlatButton(
        onPressed: () {},
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: Text(
            buttonName,
            style: kBodyText.copyWith(fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
