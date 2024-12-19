import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.onPressed, required this.txt});
  final void Function()? onPressed;
  final String txt;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 120,
      height: 60,
      child: TextButton(
          style: ButtonStyle(
            backgroundColor: WidgetStateProperty.all(Colors.red),
            foregroundColor: WidgetStateProperty.all(Colors.black),
          ),
          onPressed: onPressed,
          child: Text(txt)),
    );
  }
}
