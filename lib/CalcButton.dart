import 'package:flutter/material.dart';

class CalcButton extends StatelessWidget {
  final String text;
  final int fillColor;
  final int textColor;
  final double textSize;

  const CalcButton({
    required this.text,
    required this.fillColor,
    this.textColor = 0xFFFFFFFF,
    this.textSize = 28,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
          backgroundColor: Color(fillColor),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),

            ///
          ),
        ),
        child: Text(
          text, //result
          style: TextStyle(
            fontSize: textSize,
            color: Color(textColor), ///////
          ),
        ),
      ),
    );
  }
}///
