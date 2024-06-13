import 'package:flutter/material.dart';
import 'package:makan_yuk/constant/color_const.dart';

class DetailMenuMakan extends StatefulWidget {
  const DetailMenuMakan({super.key});

  @override
  State<DetailMenuMakan> createState() => _DetailMenuMakanState();
}

class _DetailMenuMakanState extends State<DetailMenuMakan> {
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
          'Detail Menu',
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w700,
            color: basicColor,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
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
                  const Text(
                    'Khusus buat kamu',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  const Text(
                    'Pakai pas checkout, ya!',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
                  ),
                  const SizedBox(height: 25),
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
                  const SizedBox(height: 120),
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
