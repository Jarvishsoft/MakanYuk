import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:makan_yuk/bottomnavbar.dart';
import 'package:makan_yuk/constant/color_const.dart';
import 'package:makan_yuk/widgets/card_menu_terdekat.dart';
import 'package:makan_yuk/widgets/menu_kuliner.dart';

import 'package:makan_yuk/widgets/minimenu_makan.dart';
import 'package:makan_yuk/widgets/searchbar_makan.dart';

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
                          SizedBox(width: 10),
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
                  height: 100,
                  width: double.infinity,
                ),
                Container(
                  height: MediaQuery.of(context).size.height,
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
                                // Get.to();
                              },
                              child: MiniMenuMakan(
                                iconMenu: Icons.motorcycle_outlined,
                                textMenu: 'Gratis Ongkir',
                                textMenu2: 'Plus',
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                // Get.to();
                              },
                              child: MiniMenuMakan(
                                iconMenu: Icons.percent_outlined,
                                textMenu: 'All',
                                textMenu2: 'Promo',
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                // Get.to();
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
                        const SizedBox(height: 25),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Kuliner Tradisional',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w500),
                            ),
                            TextButton(
                              onPressed: () {},
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
                        const SizedBox(height: 25),
                        Expanded(
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              Row(
                                children: [
                                  MenuKuliner(
                                    textMenu: 'Padang',
                                    imageKuliner: ClipOval(
                                      child: Image.asset('assets/sunda.png'),
                                      clipBehavior: Clip.antiAliasWithSaveLayer,
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
                              Spacer(),
                              SizedBox(height: 10),
                            ],
                          ),
                        ),

                        // SizedBox(height: 0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Terdekat',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w500),
                            ),
                            TextButton(
                              onPressed: () {},
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
                        Expanded(
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              Row(
                                children: [
                                  CardMenuTerdekatMoment(
                                      titleCard: 'Rendang',
                                      subtitleCard: 'RM Pagi Sore '),
                                  CardMenuTerdekatMoment(
                                      titleCard: 'Rendang',
                                      subtitleCard: 'RM Pagi Sore '),
                                  CardMenuTerdekatMoment(
                                      titleCard: 'Rendang',
                                      subtitleCard: 'RM Pagi Sore '),
                                  CardMenuTerdekatMoment(
                                      titleCard: 'Rendang',
                                      subtitleCard: 'RM Pagi Sore '),
                                  CardMenuTerdekatMoment(
                                      titleCard: 'Rendang',
                                      subtitleCard: 'RM Pagi Sore '),
                                  CardMenuTerdekatMoment(
                                      titleCard: 'Rendang',
                                      subtitleCard: 'RM Pagi Sore '),
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
                              onPressed: () {},
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
                        const SizedBox(height: 25),
                        const Text(
                          'Rekomendasi',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                        const Text(
                          'Rekomendasi orang-orang di sekitarmu',
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w400),
                        ),

                        // const SizedBox(height: 25),
                        // Spacer(),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 25),
                // Spacer(),
              ],
            ),
            // Text('ini adalah text3'),
          ],
        ),
      ),
      bottomNavigationBar: const BottomNavBarMenu(),
    );
  }
}
