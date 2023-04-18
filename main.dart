//pertama klik stl di

import 'package:flutter/material.dart';
import 'package:praktek/pertemuan_2/home.dart';
import 'package:praktek/pertemuan_3/case.dart';
import 'package:praktek/pertemuan_3/home.dart';
import 'package:praktek/pertemuan_4/Myprovider.dart';
import 'package:praktek/pertemuan_4/login.dart';
import 'package:praktek/pertemuan_5/input.dart';
import 'package:praktek/pertemuan_6/my_provider.dart';
import 'package:praktek/pertemuan_6/my_switch.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [ChangeNotifierProvider(create: (_) => MyswitchProv()),
    ChangeNotifierProvider(create: (_) => mySpinnerItems()),
    ],

    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var prov = Provider.of<MyswitchProv>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: prov.getTheme(),
      title: 'Flutter',
      home: Myswitch(),
    );
  }
}
