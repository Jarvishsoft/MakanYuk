import 'package:coupon_uikit/coupon_uikit.dart';
import 'package:flutter/material.dart';
import 'package:makan_yuk/constant/color_const.dart';
import 'package:makan_yuk/widgets/card_pemesanan.dart';

class DaftarPesanan extends StatefulWidget {
  const DaftarPesanan({super.key});

  @override
  State<DaftarPesanan> createState() => _DaftarPesananState();
}

class _DaftarPesananState extends State<DaftarPesanan> {
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
          'Daftar Pesanan',
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w700,
            color: basicColor,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Pilihan Menu',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    _buildMenuButton(0, 'Makanan'),
                    const SizedBox(width: 10),
                    _buildMenuButton(1, 'Minuman'),
                    const SizedBox(width: 10),
                    _buildMenuButton(2, 'Cemilan'),
                  ],
                ),
                const SizedBox(height: 20),
                PemesananCard(
                    titleCard: 'Padang Payakumbuah',
                    jmlMenu: '3 menu',
                    total: '45.000',
                    descCard: 'Masakan Padang dengan bumbu khas Nusantara',
                    imageUrl: 'assets/padang_detail.png'),
                const SizedBox(height: 20),
                PemesananCard(
                    titleCard: 'Zuppa Soup',
                    jmlMenu: '1 menu',
                    total: '25.000',
                    descCard:
                        'Zuppa Soup dengan irisan jagung dan sosis premium',
                    imageUrl: 'assets/zuppa.png'),
                const SizedBox(height: 20),
                PemesananCard(
                    titleCard: 'Rendang',
                    jmlMenu: '3 menu',
                    total: '15.000',
                    descCard:
                        'MRendang dengan bumbu khas Padang menjadikan aroma dan rasa lebih terjamin enaknya',
                    imageUrl: 'assets/padang_detail.png'),
                const SizedBox(height: 20),
                PemesananCard(
                    titleCard: 'Padang Payakumbuah',
                    jmlMenu: '3 menu',
                    total: '45.000',
                    descCard: 'Masakan Padang dengan bumbu khas Nusantara',
                    imageUrl: 'assets/padang_detail.png'),
                const SizedBox(height: 20),
                Image.asset(
                  'assets/padang_detail.png',
                  scale: 0.1,
                  fit: BoxFit.fill,
                ),
                const SizedBox(height: 8),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        const Text(
                          'Masakan Padang',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Icon(Icons.star,
                                color: Colors.amber, size: 16),
                            const SizedBox(width: 7),
                            const Text(
                              '4.5',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(width: 7),
                            const Text(
                              '(70+)',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                              ),
                            ),
                            const SizedBox(width: 7),
                            TextButton(
                              onPressed: () {},
                              child: const Text(
                                'See Review',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.blue,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Image.asset(
                      'assets/makanyuk_logo.png',
                      color: Colors.black,
                      scale: 3.4,
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                const Text(
                  'Rumah Makan Pagi Sore, menyediakan katering dengan spesialisasi di menu Masakan Padang. Bisa disajikan secara prasmanan, box kertas, hingga box premium custom.',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(height: 25),

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
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        alignment: Alignment.center,
                        shape: StadiumBorder(
                          side: BorderSide(color: Colors.grey),
                        ),
                        backgroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(
                          vertical: 15,
                          horizontal: 25,
                        ),
                        textStyle: const TextStyle(fontSize: 18),
                        elevation: 5,
                        shadowColor: Colors.black,
                        minimumSize: const Size(160, 50),
                      ),
                      onPressed: () {},
                      child: Text(
                        'Pesan sekarang',
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
        ]),
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
