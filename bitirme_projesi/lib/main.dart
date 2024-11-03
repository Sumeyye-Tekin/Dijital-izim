import 'package:flutter/material.dart';
import 'package:widgets_kullanimi/anasayf.dart';
import 'package:widgets_kullanimi/splash_ekran.dart';
import 'package:widgets_kullanimi/to_do.dart';
import 'package:widgets_kullanimi/giris.dart';
import 'package:widgets_kullanimi/menu.dart';
import 'package:widgets_kullanimi/youtube_player.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: SplashEkran());


  }
}




