import 'package:coupon_uikit/coupon_uikit.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:makan_yuk/constant/color_const.dart';
import 'package:makan_yuk/ui/detail_menu.dart';
import 'package:makan_yuk/ui/gratong.dart';
import 'package:makan_yuk/widgets/card_menu_terdekat.dart';
import 'package:makan_yuk/widgets/card_moment.dart';
import 'package:makan_yuk/widgets/menu_kuliner.dart';

import 'package:makan_yuk/widgets/minimenu_makan.dart';
import 'package:makan_yuk/widgets/searchbar_makan.dart';

import '../bottomnavbar/pesanan.dart';

class HomeMakan extends StatefulWidget {
  const HomeMakan({super.key});

  @override
  State<HomeMakan> createState() => _HomeMakanState();
}

class _HomeMakanState extends State<HomeMakan> {
  final TextEditingController _searchController = TextEditingController();
  PageController pageCont = PageController();

  void _onSearchChanged() {
    setState(() {
      // _searchText = _searchController.text;
    });
  }

  @override
  void initState() {
    super.initState();
    _searchController.addListener(_onSearchChanged);
  }

  @override
  void dispose() {
    _searchController.removeListener(_onSearchChanged);
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              color: basicColor,
              height: 200,
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/food1.png',
                        scale: 1.4,
                      ),
                      const SizedBox(width: 15),
                      Column(
                        children: [
                          const SizedBox(width: 10),
                          Text(
                            'Halo, Nurhidayat',
                            style: TextStyle(
                              fontSize: 16,
                              color: white,
                            ),
                            textAlign: TextAlign.start,
                          ),
                          Text(
                            'Bintaro, Jakarta\t\t\t\t\t\t',
                            style: TextStyle(
                              fontSize: 14,
                              color: white,
                            ),
                            textAlign: TextAlign.start,
                          ),
                        ],
                      ),
                      const Spacer(),
                      const CircleAvatar(
                        radius: 23,
                        backgroundImage: AssetImage('assets/doyok.png'),
                      ),
                      const SizedBox(width: 15),
                    ],
                  ),
                  const SizedBox(height: 55),
                  SearchBarMakan(
                    controlSearch: _searchController,
                    hintBar: 'Lagi mau makan apa hari ini?',
                  ),
                ],
              ),
            ),
            Stack(
              children: [
                Container(
                  color: basicColor,
                  height: MediaQuery.of(context).size.height,
                  width: double.infinity,
                ),
                Container(
                  height: 1080,
                  // MediaQuery.of(context).size.height,
                  width: double.infinity,
                  constraints: BoxConstraints(
                    minHeight: MediaQuery.of(context).size.height,
                    minWidth: double.infinity,
                  ),
                  decoration: BoxDecoration(
                    color: white,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 12, vertical: 12),
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 12),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            InkWell(
                              onTap: () {
                                Get.to(const GratisOngkir());
                              },
                              child: MiniMenuMakan(
                                iconMenu: Icons.motorcycle_outlined,
                                textMenu: 'Gratis Ongkir',
                                textMenu2: 'Plus',
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                // Get.to(CobaCoba());
                              },
                              child: MiniMenuMakan(
                                iconMenu: Icons.percent_outlined,
                                textMenu: 'All',
                                textMenu2: 'Promo',
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                // Get.to(const DaftarPesanan());
                              },
                              child: MiniMenuMakan(
                                iconMenu: Icons.schedule_outlined,
                                textMenu: 'Scheduled',
                                textMenu2: 'Order',
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 25),
                        const Text(
                          'Khusus buat kamu',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                        const Text(
                          'Pakai pas checkout, ya!',
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w400),
                        ),
                        const SizedBox(height: 10),
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
                              padding: EdgeInsets.symmetric(
                                  horizontal: 25, vertical: 3),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Diskon 40%',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Divider(),
                                  Text(
                                    'Pengguna Setia',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  SizedBox(height: 5),
                                  Row(
                                    children: [
                                      Icon(Icons
                                          .perm_device_information_rounded),
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
                        const SizedBox(height: 15),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Kuliner Tradisional',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w500),
                            ),
                            TextButton(
                              onPressed: () {
                                Get.to(DetailMenuMakan());
                              },
                              child: Text(
                                'Lihat Semua',
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: showAll),
                              ),
                            ),
                          ],
                        ),
                        const Text(
                          'Nikmati hari mu dengan bernostalgia',
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w400),
                        ),
                        const SizedBox(height: 20),
                        SizedBox(
                          height: 125,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              Row(
                                children: [
                                  MenuKuliner(
                                    textMenu: 'Padang',
                                    imageKuliner: ClipOval(
                                      clipBehavior: Clip.antiAliasWithSaveLayer,
                                      child: Image.asset('assets/sunda.png'),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(width: 10),
                              MenuKuliner(
                                textMenu: 'Jawa',
                                imageKuliner: ClipRRect(
                                  borderRadius: BorderRadius.circular(100),
                                  child: Image.asset('assets/padang.png'),
                                ),
                              ),
                              const SizedBox(width: 10),
                              MenuKuliner(
                                textMenu: 'Sunda',
                                imageKuliner: ClipRRect(
                                  borderRadius: BorderRadius.circular(100),
                                  child: Image.asset('assets/padang.png'),
                                ),
                              ),
                              const SizedBox(width: 10),
                              MenuKuliner(
                                textMenu: 'Makassar',
                                imageKuliner: ClipRRect(
                                  borderRadius: BorderRadius.circular(100),
                                  child: Image.asset('assets/padang.png'),
                                ),
                              ),
                              const SizedBox(width: 10),
                              MenuKuliner(
                                textMenu: 'Korea',
                                imageKuliner: ClipRRect(
                                  borderRadius: BorderRadius.circular(100),
                                  child: Image.asset('assets/padang.png'),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Terdekat',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w500),
                            ),
                            TextButton(
                              onPressed: () {
                                Get.to(DetailMenuMakan());
                              },
                              child: Text(
                                'Lihat Semua',
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: showAll),
                              ),
                            ),
                          ],
                        ),
                        const Text(
                          'Menu terlaris di sekitarmu',
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w400),
                        ),
                        const SizedBox(height: 5),
                        SizedBox(
                          height: 200,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              Row(
                                children: [
                                  CardMenuTerdekatMoment(
                                    titleCard: 'Rendang',
                                    subtitleCard: 'RM Pagi Sore ',
                                    lateImage: Image.asset(
                                      'assets/rendangminang.png',
                                      scale: 1.6,
                                      width: 100,
                                      height: 114,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  // const SizedBox(width: 10),
                                  CardMenuTerdekatMoment(
                                    titleCard: 'Nasi Padang',
                                    subtitleCard: 'RM Pagi Sore ',
                                    lateImage: Image.asset(
                                      'assets/naspad.png',
                                      scale: 1.6,
                                      width: 120,
                                      height: 114,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  // const SizedBox(width: 10),
                                  CardMenuTerdekatMoment(
                                    titleCard: 'Zuppa Soup',
                                    subtitleCard: 'RM Pagi Sore ',
                                    lateImage: Image.asset(
                                      'assets/zuppa.png',
                                      scale: 1.6,
                                      width: 100,
                                      height: 114,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  // const SizedBox(width: 10),
                                  CardMenuTerdekatMoment(
                                    titleCard: 'Rendang',
                                    subtitleCard: 'RM Pagi Sore ',
                                    lateImage: Image.asset(
                                      'assets/makassar.png',
                                      scale: 0.5,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  // const SizedBox(width: 10),
                                  CardMenuTerdekatMoment(
                                    titleCard: 'Paket Nasi Padang',
                                    subtitleCard: 'RM Pagi Sore ',
                                    lateImage: Image.asset(
                                      'assets/sunda.png',
                                      scale: 0.5,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  // const SizedBox(width: 10),
                                  CardMenuTerdekatMoment(
                                    titleCard: 'Zuppa Soup',
                                    subtitleCard: 'RM Pagi Sore ',
                                    lateImage: Image.asset(
                                      'assets/padang.png',
                                      scale: 0.5,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 25),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Moment',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w500),
                            ),
                            TextButton(
                              onPressed: () {
                                Get.to(DetailMenuMakan());
                              },
                              child: Text(
                                'Lihat Semua',
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: showAll),
                              ),
                            ),
                          ],
                        ),
                        const Text(
                          'Sesuaikan menu dengan moment istimewamu',
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w400),
                        ),
                        const SizedBox(height: 10),
                        SizedBox(
                          height: 170,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              MomentCard(
                                  titleCard: 'Pernikahan',
                                  imageUrl: 'assets/pernikahan.png'),
                              MomentCard(
                                  titleCard: 'Syukuran',
                                  imageUrl: 'assets/syukuran.png'),
                              MomentCard(
                                  titleCard: 'Ulang Tahun',
                                  imageUrl: 'assets/ulangtahun.png'),
                              MomentCard(
                                  titleCard: 'Pernikahan',
                                  imageUrl: 'assets/pernikahan.png'),
                              MomentCard(
                                  titleCard: 'Syukuran',
                                  imageUrl: 'assets/syukuran.png'),
                            ],
                          ),
                        ),
                        // Card(
                        //   child: Column(
                        //     children: [
                        //       Padding(
                        //         padding: const EdgeInsets.all(8.0),
                        //         child: ClipRRect(
                        //           borderRadius: BorderRadius.circular(10),
                        //           child: Image.asset(
                        //             'assets/jawa.png',
                        //             scale: 0.5,
                        //             fit: BoxFit.fill,
                        //           ),
                        //         ),
                        //       ),
                        //       Padding(
                        //         padding: const EdgeInsets.all(8.0),
                        //         child: Column(
                        //           children: [
                        //             Text('Rendang'),
                        //             Text('RM Pagi Sore'),
                        //           ],
                        //         ),
                        //       ),
                        //     ],
                        //   ),
                        // ),
                        const SizedBox(height: 25),
                        // const Text(
                        //   'Rekomendasi',
                        //   style: TextStyle(
                        //       fontSize: 16, fontWeight: FontWeight.w500),
                        // ),
                        // const Text(
                        //   'Rekomendasi orang-orang di sekitarmu',
                        //   style: TextStyle(
                        //       fontSize: 12, fontWeight: FontWeight.w400),
                        // ),
                        // const SizedBox(height: 25),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            // Text('ini adalah text3'),
          ],
        ),
      ),
    );
  }
}
