import 'package:bookly_app/core/utils/styels.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({Key? key,
    required this.backgroundColor,
    required this.textColor,
    this.borderRadius,
    required this.text,
    required this.fontSize,
    this.onPressed,
  }) : super(key: key);

  final Color backgroundColor;
  final Color textColor;
  final BorderRadius? borderRadius;
  final String text;
  final double fontSize;
  final void Function()? onPressed;


  @override
  Widget build(BuildContext context) {
      return SizedBox(
        height: 40,
        child: TextButton(
            onPressed: onPressed,
            style: TextButton.styleFrom(
              backgroundColor: backgroundColor,
              shape:RoundedRectangleBorder(
                borderRadius:  borderRadius ??  BorderRadius.circular(10),
              )
            ),
            child: Text(
              text,
              style:  Styles.textStyle18.copyWith(
                fontSize: fontSize,
                fontWeight: FontWeight.w900,
                color: textColor,
            ),
            ),

        ),
      );
  }
}
