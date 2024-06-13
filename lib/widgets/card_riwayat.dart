import 'package:flutter/material.dart';
import '../constant/color_const.dart';

// ignore: must_be_immutable
class RiwayatCard extends StatelessWidget {
  final String titleCard;
  final String tglCard;
  final String descCard;
  final String total;
  final String imageUrl;
  final String statusCard;
  final String jmlMenu;
  final Color statusColor;

  Widget? lateImage;

  RiwayatCard(
      {super.key,
      this.lateImage,
      required this.statusColor,
      required this.statusCard,
      required this.titleCard,
      required this.jmlMenu,
      required this.total,
      required this.tglCard,
      required this.descCard,
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
                    imageUrl,
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
                        titleCard,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Row(
                        children: [
                          Text(
                            tglCard,
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                          const SizedBox(width: 8),
                          Text(
                            '-',
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                          const SizedBox(width: 8),
                          Text(
                            statusCard,
                            style: TextStyle(
                              fontSize: 12,
                              color: statusColor,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 5),
                      Text(
                        descCard,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const SizedBox(height: 8),
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
                        const SizedBox(width: 15),
                        Text(
                          total,
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(width: 15),
                        Text(
                          'Hemat 20rb',
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                            color: Colors.green,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 5, width: 15),
                    Row(
                      children: [
                        const SizedBox(width: 15),
                        Text(
                          jmlMenu,
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
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
                    'Pesan lagi',
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
