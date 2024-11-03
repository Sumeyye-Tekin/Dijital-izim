import 'package:flutter/material.dart';
import 'package:widgets_kullanimi/anasayf.dart';
import 'package:widgets_kullanimi/anasayf.dart';

class SplashEkran extends StatefulWidget {
  const SplashEkran({super.key});


  @override
  State<SplashEkran> createState() => _SplashEkranState();
}

class _SplashEkranState extends State<SplashEkran> {

  @override
  void initState()
  {super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Anasayf()),
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    var ekranBilgisi = MediaQuery.of(context);
    final double ekranYuksekligi = ekranBilgisi.size.height;
    final double ekranGenisligi = ekranBilgisi.size.width;

    return  Scaffold(
      backgroundColor: Colors.deepPurple.shade50,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('resimler/smartphone-1184883_1280.png', width: ekranGenisligi/4,height: ekranYuksekligi/4),
            SizedBox(height: 5),
            Text(
              'Dijital İzim',
              style: TextStyle(
                fontFamily: "Merienda",
                fontSize: 35,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}



