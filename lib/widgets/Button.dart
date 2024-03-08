import 'package:calculator/contents/color.dart';
import 'package:calculator/models/calcul.dart';
import 'package:flutter/material.dart';


class Button extends StatelessWidget {
  Button({ super.key,
    required this.text,
    this.textColor = Colors.black,
    this.backgroundColor = button,
  });

  final String text;
  final Color textColor;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(8.0),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18),
            ),
            primary: backgroundColor,
            padding: EdgeInsets.all(22.0),
          ),
          onPressed: () => onButtonClick(text),
          child: Text(
            text,
            style: TextStyle(
              color: textColor,
              fontWeight: FontWeight.bold,
              fontSize: 18.0,
            ),
          ),
        ),      ),
    );
  }
}
