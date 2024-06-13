import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CardMenuTerdekatMoment extends StatelessWidget {
  final String titleCard;
  final String subtitleCard;
  Image? lateImage;

  CardMenuTerdekatMoment(
      {super.key,
      this.lateImage,
      required this.titleCard,
      required this.subtitleCard});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      margin: const EdgeInsets.all(10),
      elevation: 5,
      color: Colors.white,
      shadowColor: Colors.black,
      surfaceTintColor: Colors.white,
      // semanticContainer: true,
      // margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      // borderOnForeground: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: lateImage,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Text(
                  titleCard,
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                ),
                Text(
                  subtitleCard,
                  style: TextStyle(fontSize: 13, color: Colors.grey),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
