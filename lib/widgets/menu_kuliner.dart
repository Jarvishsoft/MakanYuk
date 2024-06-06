import 'package:flutter/material.dart';
import 'package:makan_yuk/constant/color_const.dart';

// ignore: must_be_immutable
class MenuKuliner extends StatelessWidget {
  final String textMenu;
  IconData? iconMenu;
  Widget? imageKuliner;

  MenuKuliner({
    super.key,
    required this.textMenu,
    this.iconMenu,
    this.imageKuliner,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 70,
          height: 70,
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(1200),
            border: Border.all(color: white),
            // boxShadow: const [
            //   BoxShadow(
            //     color: Colors.black26,
            //     blurRadius: 10,
            //     spreadRadius: 1.5,
            //     offset: Offset(1, 4), // shadow direction: bottom right
            //   ),
            // ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: imageKuliner,
          ),
        ),
        const SizedBox(height: 10),
        Text(
          textMenu,
          style: const TextStyle(fontSize: 13, fontWeight: FontWeight.w400),
        ),
      ],
    );
  }
}
