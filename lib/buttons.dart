// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';


class MyButton extends StatelessWidget {
  final color;
  final Color textColor;
  final String buttonText;
  final buttonTapped;

  const MyButton(
      {super.key,
      required this.color,
      required this.textColor,
      required this.buttonTapped,
      required this.buttonText});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: buttonTapped,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Container(
            color: color,
            child: Center(
              child: Text(
                buttonText,
                style: TextStyle(color: textColor, fontSize: 20),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

bool isOperator(String x) {
  if (x == '/' || x == '+' || x == '-' || x == '=' || x == 'X') {
    return true;
  }
  return false;
}

