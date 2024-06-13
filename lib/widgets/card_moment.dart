import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MomentCard extends StatelessWidget {
  final String titleCard;
  final String imageUrl;
  Widget? lateImage;

  MomentCard(
      {super.key,
      this.lateImage,
      required this.titleCard,
      required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Card(
      // margin: const EdgeInsets.all(10),
      shadowColor: Colors.black,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      semanticContainer: true,
      color: Colors.white,
      surfaceTintColor: Colors.white,
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
            child: Image.asset(
              imageUrl,
              fit: BoxFit.fill,
              height: 105,
              width: 110,
            ),
          ),
          const SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              titleCard,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
