import 'package:flutter/material.dart';

class DetailMenuMakan extends StatefulWidget {
  const DetailMenuMakan({super.key});

  @override
  State<DetailMenuMakan> createState() => _DetailMenuMakanState();
}

class _DetailMenuMakanState extends State<DetailMenuMakan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Menu Makan'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Detail Menu Makan'),
          ],
        ),
      ),
    );
  }
}
