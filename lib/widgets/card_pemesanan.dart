import 'package:flutter/material.dart';
import '../constant/color_const.dart';

// ignore: must_be_immutable
class PemesananCard extends StatefulWidget {
  final String titleCard;

  final String descCard;
  final String total;
  final String imageUrl;
  final String jmlMenu;
  Widget? lateImage;

  PemesananCard(
      {super.key,
      this.lateImage,
      required this.titleCard,
      required this.jmlMenu,
      required this.total,
      required this.descCard,
      required this.imageUrl});

  @override
  State<PemesananCard> createState() => _PemesananCardState();
}

class _PemesananCardState extends State<PemesananCard> {
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
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  child: Image.asset(
                    widget.imageUrl,
                    fit: BoxFit.fill,
                    height: 80,
                    width: 80,
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.titleCard,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 5),
                      const SizedBox(height: 5),
                      Text(
                        widget.descCard,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Row(
                        children: [
                          const SizedBox(width: 15),
                          Text(
                            widget.jmlMenu,
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const Divider(),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Total  :  ',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(width: 15),
                        Text(
                          widget.total,
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(width: 15),
                      ],
                    ),
                    const SizedBox(height: 5, width: 15),
                  ],
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: StadiumBorder(
                      side: BorderSide(color: Colors.grey),
                    ),
                    backgroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(
                      vertical: 15,
                      horizontal: 25,
                    ),
                    textStyle: const TextStyle(fontSize: 18),
                    // elevation: 5,
                    // shadowColor: Colors.black,
                    // minimumSize: const Size(160, 50),
                  ),
                  onPressed: () {},
                  child: Text(
                    'Lanjutkan ke pembayaran',
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                      color: basicColor,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
