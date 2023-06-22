import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:homepagecntt/anhmodau.dart';
import 'package:homepagecntt/gioithieu.dart';
import 'package:homepagecntt/hinhanh.dart';
import 'package:homepagecntt/solieu.dart';
import 'package:homepagecntt/tintuc.dart';
import 'package:homepagecntt/ttlms.dart';
import 'package:homepagecntt/bangtin.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Image.asset(
              'assets/logo.png',
              fit: BoxFit.contain,
              height: 32,
            ),
            const SizedBox(width: 5),
            const Expanded(
              child: Text(
                'TRƯỜNG THPT CÔNG NGHỆ THÔNG TIN VNPT',
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                style: TextStyle(fontSize: 15),
              ),
            )
          ],
        ),
        actions: <Widget>[
          IconButton(
            icon: Image.asset("assets/vnicon.png", height: 30),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(IconData(0xe3dc, fontFamily: 'MaterialIcons')),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        children: const [
          anhmodau(),
          SizedBox(height: 10),
          Padding(
            padding: EdgeInsets.all(15),
            child: Column(
              children: [
                BangTin(),
                SizedBox(height: 30),
                gioithieu(),
                SizedBox(height: 30),
                solieu(),
                SizedBox(height: 30),
                hinhanh(),
                SizedBox(height: 30),
                tintuc(),
              ],
            ),
          ),
          SizedBox(height: 30),
          ttlms()
        ],
      ),
    );
  }
}
