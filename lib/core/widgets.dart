import 'package:flutter/material.dart';
import 'package:lunastro_app/core/constants.dart';


class projectStadiumButton extends StatelessWidget {
  const projectStadiumButton({
    super.key,
    required this.buttonText,
    this.bColor,
    required this.fColor,
    required this.textStyle
  });

  final String buttonText;
  final Color? bColor;
  final Color fColor;
  final TextStyle textStyle;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},//topic page
      child: Text(
        "${buttonText}", 
        style: textStyle,
      ),
      style: ElevatedButton.styleFrom(
        fixedSize: Size(374, 63),
        backgroundColor: bColor ?? projectColor.PeriwinkleBlue,
        foregroundColor: fColor,
      ),
    );
  }
}