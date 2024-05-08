import 'package:flutter/material.dart';
import 'dart:async';
import 'package:get/get.dart';

class SplashPageMakan extends StatefulWidget {
  const SplashPageMakan({super.key});

  @override
  State<SplashPageMakan> createState() => _SplashPageMakanState();
}

class _SplashPageMakanState extends State<SplashPageMakan> {
  Future timeSplash() async {
    Timer(const Duration(seconds: 6), () {
      // Get.offAll(() => const LoginPage());
    });
  }

  @override
  void initState() {
    timeSplash();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromARGB(252, 218, 228, 248),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(height: 60),
              Padding(
                padding: EdgeInsets.all(16),
                child: Text('Splash Page'),
                // child: Image(
                //   image: AssetImage('assets/hikeabis_logo.png'),
                // ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  '"Your best partner for a better catering!"',
                  style: TextStyle(
                      fontSize: 15,
                      fontStyle: FontStyle.italic,
                      color: Colors.black),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
