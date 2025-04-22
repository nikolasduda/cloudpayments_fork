import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Widget child;
  final Color backgroundColor;
  final Function onPressed;

  CustomButton({required this.child, required this.backgroundColor, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(backgroundColor),
        minimumSize: MaterialStateProperty.all(Size(double.infinity, 48.0)),
      ),
      onPressed: onPressed,
      child: child,
    );
  }
}