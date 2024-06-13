import 'package:flutter/material.dart';
import 'package:makan_yuk/constant/color_const.dart';
import 'package:makan_yuk/widgets/card_riwayat.dart';

class RiwayatPemesanan extends StatefulWidget {
  const RiwayatPemesanan({super.key});

  @override
  State<RiwayatPemesanan> createState() => _RiwayatPemesananState();
}

class _RiwayatPemesananState extends State<RiwayatPemesanan> {
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
          'Riwayat Pemesanan',
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
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Image.asset(
                  //   'assets/makanyuk_logo.png',
                  //   color: Colors.black,
                  //   scale: 3.4,
                  // ),

                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _buildMenuButton(0, 'Makanan'),
                      const SizedBox(width: 10),
                      _buildMenuButton(1, 'Minuman'),
                      const SizedBox(width: 10),
                      _buildMenuButton(2, 'Cemilan'),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Divider(),
                  // const SizedBox(height: 25),
                  // Center(
                  // //   child: Text('Belum ada riwayat pemesanan'),
                  // // ),
                  const SizedBox(height: 10),
                  RiwayatCard(
                    statusColor: Colors.green,
                    statusCard: 'Selesai',
                    titleCard: 'Nasi Padang Komplit',
                    total: '42.500',
                    tglCard: '05 Juni 2024, 15:19',
                    descCard:
                        'Nasi Padang paket komplit dengan rendang, dan kepala manyung',
                    imageUrl: 'assets/padang.png',
                    jmlMenu: '2 menu',
                  ),
                  const SizedBox(height: 10),
                  RiwayatCard(
                    statusColor: Colors.green,
                    statusCard: 'Selesai',
                    titleCard: 'Zuppa Soup',
                    total: '20.500',
                    tglCard: '08 Juni 2024, 20:20',
                    descCard: '1 Zuppa Soup dengan isian jagung, dan sosis',
                    imageUrl: 'assets/zuppa.png',
                    jmlMenu: '1 menu',
                  ),
                  const SizedBox(height: 10),
                  RiwayatCard(
                    statusColor: Colors.red,
                    statusCard: 'Batal',
                    titleCard: 'Opor Keluarga',
                    total: '66.000',
                    tglCard: '09 Juni 2024, 12:19',
                    descCard:
                        'Nasi Padang paket komplit dengan rendang, dan kepala manyung',
                    imageUrl: 'assets/jawa.png',
                    jmlMenu: '2 menu',
                  ),
                  const SizedBox(height: 10),
                  RiwayatCard(
                    statusColor: Colors.red,
                    statusCard: 'Batal',
                    titleCard: 'Opor Keluarga',
                    total: '66.000',
                    tglCard: '09 Juni 2024, 12:19',
                    descCard:
                        'Nasi Padang paket komplit dengan rendang, dan kepala manyung',
                    imageUrl: 'assets/jawa.png',
                    jmlMenu: '2 menu',
                  ),
                  const SizedBox(height: 10),
                  RiwayatCard(
                    statusColor: Colors.green,
                    statusCard: 'Selesai',
                    titleCard: 'Zuppa Soup',
                    total: '20.500',
                    tglCard: '08 Juni 2024, 20:20',
                    descCard: '1 Zuppa Soup dengan isian jagung, dan sosis',
                    imageUrl: 'assets/zuppa.png',
                    jmlMenu: '1 menu',
                  ),
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
