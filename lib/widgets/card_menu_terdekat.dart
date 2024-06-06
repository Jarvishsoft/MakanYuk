import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CardMenuTerdekatMoment extends StatelessWidget {
  final String titleCard;
  final String subtitleCard;
  Widget? lateImage;

  CardMenuTerdekatMoment(
      {super.key,
      this.lateImage,
      required this.titleCard,
      required this.subtitleCard});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(vertical: 10),
        child: Card(
          elevation: 10,
          // shape: Border.symmetric(),
          color: Colors.grey[300],
          shadowColor: Colors.black,

          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Column(
              children: <Widget>[
                Text(titleCard),
                Text(subtitleCard),
              ],
            ),
          ),
        )
        // Container(
        //   width: 25,
        //   height: 50,
        //   // margin: EdgeInsets.only(
        //   //   left: 5,
        //   //   right: 5,
        //   // ),
        //   decoration: BoxDecoration(
        //     color: Colors.grey,
        //     borderRadius: BorderRadius.circular(10),
        //     border: Border.all(color: white),
        //   ),
        //   child: Column(
        //     children: [
        //       Text(titleCard,
        //           style:
        //               const TextStyle(fontSize: 14, fontWeight: FontWeight.w400)),
        //       Text(titleCard,
        //           style:
        //               const TextStyle(fontSize: 12, fontWeight: FontWeight.w300)),
        //               Card(

        //               ),
        //     ],
        //   ),
        // ),
        );
  }
}
