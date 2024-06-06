import 'package:flutter/material.dart';
import 'package:makan_yuk/constant/color_const.dart';

// ignore: must_be_immutable
class MiniMenuMakan extends StatelessWidget {
  final String textMenu;
  final String textMenu2;
  IconData? iconMenu;

  MiniMenuMakan(
      {super.key,
      required this.textMenu,
      this.iconMenu,
      required this.textMenu2});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            color: white,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: white),
            boxShadow: const [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 10,
                spreadRadius: 1.5,
                offset: Offset(1, 4), // shadow direction: bottom right
              ),
            ],
          ),
          child: Icon(
            iconMenu,
            size: 35,
            color: basicColor,
          ),
        ),
        const SizedBox(height: 10),
        Text(
          textMenu,
          style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
        ),
        Text(
          textMenu2,
          style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
        ),
      ],
    );
  }
}
