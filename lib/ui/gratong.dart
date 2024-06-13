import 'package:coupon_uikit/coupon_uikit.dart';
import 'package:flutter/material.dart';
import 'package:makan_yuk/constant/color_const.dart';

class GratisOngkir extends StatefulWidget {
  const GratisOngkir({super.key});

  @override
  State<GratisOngkir> createState() => _GratisOngkirState();
}

class _GratisOngkirState extends State<GratisOngkir> {
  int _selectedIndex = 0;
  int totalOrders = 0;

  // void jmlPesananDialog(BuildContext context) {
  //   showModalBottomSheet(
  //     context: context,
  //     builder: ((context) {
  //       return Padding(
  //         padding: EdgeInsets.all(12),
  //         child: Column(
  //           mainAxisSize: MainAxisSize.min,
  //           children: [
  //             Text(
  //               'Total Pesanan',
  //               style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
  //             ),
  //             SizedBox(height: 10),
  //             Text('Jumlah Total Pesanan : ${totalOrders} '),
  //             SizedBox(height: 20),
  //             ElevatedButton(
  //               onPressed: () {},
  //               child: Text('Tutup'),
  //             ),
  //           ],
  //         ),
  //       );
  //     }),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Voucher Ongkir',
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w700,
            color: basicColor,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/cod.png',
                        scale: 3,
                        fit: BoxFit.fill,
                      ),
                      // Image.asset(
                      //   'assets/ongkir.png',
                      //   scale: 12,
                      //   fit: BoxFit.fill,
                      // ),
                    ],
                  ),

                  //     Image.asset(
                  //       'assets/makanyuk_logo.png',
                  //       color: Colors.black,
                  //       scale: 3.4,
                  //     ),
                  //   ],
                  // ),

                  const SizedBox(height: 25),
                  const Text(
                    'Khusus buat kamu',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  const Text(
                    'Pakai pas checkout, ya!',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
                  ),
                  // const SizedBox(height: 25),
                  // const Text(
                  //   'Pilihan Menu',
                  //   style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  // ),
                  const SizedBox(height: 15),
                  Row(
                    children: [
                      _buildMenuButton(0, 'Makanan'),
                      const SizedBox(width: 10),
                      _buildMenuButton(1, 'Minuman'),
                      const SizedBox(width: 10),
                      _buildMenuButton(2, 'Cemilan'),
                    ],
                  ),
                  const SizedBox(height: 15),
                  const Padding(
                    padding: EdgeInsets.all(12),
                    child: CouponCard(
                      width: 400,
                      shadow: Shadow(
                        color: Colors.grey,
                        offset: Offset(1, 1),
                        blurRadius: 5,
                      ),
                      // clockwise: true,
                      decoration: BoxDecoration(
                        color: Color(0xFFDAF5FA),
                      ),
                      borderRadius: 15,
                      border: BorderSide(
                        color: Colors.transparent,
                        width: 2,
                      ),
                      curveAxis: Axis.vertical,
                      curveRadius: 25,
                      curvePosition: 50,
                      height: 100,
                      firstChild: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.percent_rounded),
                            // Text('hallo'),
                          ],
                        ),
                      ),
                      secondChild: Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 25, vertical: 3),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Diskon 40%',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            Divider(),
                            Text(
                              'Pengguna Setia',
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.w500),
                            ),
                            SizedBox(height: 5),
                            Row(
                              children: [
                                Icon(Icons.perm_device_information_rounded),
                                SizedBox(width: 5),
                                Text(
                                  'Hangus 30 Juni 2024',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Divider(),
                  const Padding(
                    padding: EdgeInsets.all(12),
                    child: CouponCard(
                      width: 400,
                      shadow: Shadow(
                        color: Colors.grey,
                        offset: Offset(1, 1),
                        blurRadius: 5,
                      ),
                      // clockwise: true,
                      decoration: BoxDecoration(
                        color: Color(0xFFDAF5FA),
                      ),
                      borderRadius: 15,
                      border: BorderSide(
                        color: Colors.transparent,
                        width: 2,
                      ),
                      curveAxis: Axis.vertical,
                      curveRadius: 25,
                      curvePosition: 50,
                      height: 100,
                      firstChild: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.percent_rounded),
                            // Text('hallo'),
                          ],
                        ),
                      ),
                      secondChild: Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 25, vertical: 3),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Diskon 40%',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            Divider(),
                            Text(
                              'Pengguna Setia',
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.w500),
                            ),
                            SizedBox(height: 5),
                            Row(
                              children: [
                                Icon(Icons.perm_device_information_rounded),
                                SizedBox(width: 5),
                                Text(
                                  'Hangus 30 Juni 2024',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Divider(),
                  const Padding(
                    padding: EdgeInsets.all(12),
                    child: CouponCard(
                      width: 400,
                      shadow: Shadow(
                        color: Colors.grey,
                        offset: Offset(1, 1),
                        blurRadius: 5,
                      ),
                      // clockwise: true,
                      decoration: BoxDecoration(
                        color: Color(0xFFDAF5FA),
                      ),
                      borderRadius: 15,
                      border: BorderSide(
                        color: Colors.transparent,
                        width: 2,
                      ),
                      curveAxis: Axis.vertical,
                      curveRadius: 25,
                      curvePosition: 50,
                      height: 100,
                      firstChild: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.percent_rounded),
                            // Text('hallo'),
                          ],
                        ),
                      ),
                      secondChild: Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 25, vertical: 3),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Diskon 40%',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            Divider(),
                            Text(
                              'Pengguna Setia',
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.w500),
                            ),
                            SizedBox(height: 5),
                            Row(
                              children: [
                                Icon(Icons.perm_device_information_rounded),
                                SizedBox(width: 5),
                                Text(
                                  'Hangus 30 Juni 2024',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Divider(),
                  const Padding(
                    padding: EdgeInsets.all(12),
                    child: CouponCard(
                      width: 400,
                      shadow: Shadow(
                        color: Colors.grey,
                        offset: Offset(1, 1),
                        blurRadius: 5,
                      ),
                      // clockwise: true,
                      decoration: BoxDecoration(
                        color: Color(0xFFDAF5FA),
                      ),
                      borderRadius: 15,
                      border: BorderSide(
                        color: Colors.transparent,
                        width: 2,
                      ),
                      curveAxis: Axis.vertical,
                      curveRadius: 25,
                      curvePosition: 50,
                      height: 100,
                      firstChild: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.percent_rounded),
                            // Text('hallo'),
                          ],
                        ),
                      ),
                      secondChild: Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 25, vertical: 3),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Diskon 40%',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            Divider(),
                            Text(
                              'Pengguna Setia',
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.w500),
                            ),
                            SizedBox(height: 5),
                            Row(
                              children: [
                                Icon(Icons.perm_device_information_rounded),
                                SizedBox(width: 5),
                                Text(
                                  'Hangus 30 Juni 2024',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Divider(),
                  const Padding(
                    padding: EdgeInsets.all(12),
                    child: CouponCard(
                      width: 400,
                      shadow: Shadow(
                        color: Colors.grey,
                        offset: Offset(1, 1),
                        blurRadius: 5,
                      ),
                      // clockwise: true,
                      decoration: BoxDecoration(
                        color: Color(0xFFDAF5FA),
                      ),
                      borderRadius: 15,
                      border: BorderSide(
                        color: Colors.transparent,
                        width: 2,
                      ),
                      curveAxis: Axis.vertical,
                      curveRadius: 25,
                      curvePosition: 50,
                      height: 100,
                      firstChild: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.percent_rounded),
                            // Text('hallo'),
                          ],
                        ),
                      ),
                      secondChild: Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 25, vertical: 3),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Diskon 40%',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            Divider(),
                            Text(
                              'Pengguna Setia',
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.w500),
                            ),
                            SizedBox(height: 5),
                            Row(
                              children: [
                                Icon(Icons.perm_device_information_rounded),
                                SizedBox(width: 5),
                                Text(
                                  'Hangus 30 Juni 2024',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Divider(),
                  // ElevatedButton(
                  //   onPressed: () {
                  //     setState(() {
                  //       totalOrders++;
                  //     });
                  //     jmlPesananDialog(context);
                  //   },
                  //   child: Text('Tambah Pesanan'),
                  // ),
                  const SizedBox(height: 20),

                  // ToggleButtons(
                  //   isSelected:
                  //       [0, 1, 2].map((index) => index == selectedIndex).toList(),
                  //   onPressed: (index) {
                  //     setState(() {
                  //       selectedIndex = index;
                  //     });
                  //   },
                  //   borderRadius: BorderRadius.circular(30),
                  //   selectedBorderColor: basicColor,
                  //   borderColor: Colors.teal,
                  //   renderBorder: true,
                  //   focusColor: Colors.black,
                  //   constraints: const BoxConstraints(
                  //     minHeight: 40,
                  //     minWidth: 100,
                  //     maxHeight: 50,
                  //     maxWidth: 150,
                  //   ),
                  //   selectedColor: Colors.white,
                  //   fillColor: Colors.teal,
                  //   color: Colors.grey,
                  //   children: const [
                  //     Padding(
                  //       padding: EdgeInsets.symmetric(horizontal: 20),
                  //       child: Text('Makanan'),
                  //     ),
                  //     Padding(
                  //       padding: EdgeInsets.symmetric(horizontal: 20),
                  //       child: Text('Minuman'),
                  //     ),
                  //     Padding(
                  //       padding: EdgeInsets.symmetric(horizontal: 20),
                  //       child: Text('Cemilan'),
                  //     ),
                  //   ],
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMenuButton(int index, String title) {
    bool isSelected = _selectedIndex == index;
    return InkWell(
      onTap: () {
        setState(() {
          _selectedIndex = index;
        });
      },
      borderRadius: BorderRadius.circular(12),
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 10,
        ),
        decoration: BoxDecoration(
          color: _selectedIndex == index ? Colors.teal : Colors.grey[200],
          borderRadius: BorderRadius.circular(12),
        ),
        child: Text(
          title,
          style: TextStyle(
            color: isSelected ? Colors.white : Colors.grey,
          ),
        ),
      ),
    );
  }
}
