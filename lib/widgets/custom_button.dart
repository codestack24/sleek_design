import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.buttonText,
    this.onTap,
    this.color,
    this.fontColor,
  }) : super(key: key);

  final String buttonText;
  final Widget? onTap;
  final Color? color;
  final Color? fontColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (e) => onTap!,
          ),
        );
      },
      child: Container(
        padding: EdgeInsets.all(30),
          decoration: BoxDecoration(
            color: color!,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(50),
            ),
          ),
          child: Text(
            buttonText,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: fontColor!
            ),
          )),
    );
  }
}
