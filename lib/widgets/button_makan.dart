import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ButtonMakan extends StatelessWidget {
  String textButton;
  VoidCallback? onPressedButton;

  ButtonMakan({
    super.key,
    required this.textButton,
    required this.onPressedButton,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: const StadiumBorder(),
        backgroundColor: const Color(0xFF037283),
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        textStyle: const TextStyle(fontSize: 18),
        elevation: 10,
        shadowColor: Colors.black,
        minimumSize: const Size(160, 50),
      ),
      onPressed: onPressedButton,
      child: Text(
        textButton,
        style: const TextStyle(
          fontSize: 15,
          color: Colors.white,
        ),
      ),
    );
  }
}
