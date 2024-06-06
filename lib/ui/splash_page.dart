import 'package:flutter/material.dart';
import 'dart:async';
import 'package:get/get.dart';
import 'package:makan_yuk/ui/login.dart';

import '../constant/color_const.dart';

class SplashPageMakan extends StatefulWidget {
  const SplashPageMakan({super.key});

  @override
  State<SplashPageMakan> createState() => _SplashPageMakanState();
}

class _SplashPageMakanState extends State<SplashPageMakan> {
  Future timeSplash() async {
    Timer(const Duration(seconds: 6), () {
      Get.offAll(() => const LoginMakan());
    });
  }

  @override
  void initState() {
    timeSplash();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: basicColor,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              const SizedBox(height: 15),
              const Padding(
                padding: EdgeInsets.all(16),
                // child: Text('Splash Page'),
                child: Image(
                  image: AssetImage('assets/makanyuk_logo.png'),
                ),
              ),
              const SizedBox(height: 10),
              Column(
                children: [
                  Text(
                    'MakanYuk',
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: white),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    'Santapan Bergizi Untuk Selalu Happy',
                    style: TextStyle(
                        fontSize: 15,
                        // fontStyle: FontStyle.italic,
                        color: white),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
