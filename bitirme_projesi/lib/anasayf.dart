import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:widgets_kullanimi/sayfa_dort.dart';
import 'package:widgets_kullanimi/sayfa_alti.dart';
import 'package:widgets_kullanimi/sayfa_bes.dart';
import 'package:widgets_kullanimi/sayfa_bir.dart';
import 'package:widgets_kullanimi/sayfa_dort.dart';
import 'package:widgets_kullanimi/sayfa_iki.dart';
import 'package:widgets_kullanimi/sayfa_sekiz.dart';
import 'package:widgets_kullanimi/sayfa_uc.dart';
import 'package:widgets_kullanimi/sayfa_yedi.dart';
import 'package:widgets_kullanimi/test.dart';
import 'package:widgets_kullanimi/to_do.dart';
import 'package:widgets_kullanimi/youtube_player.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Anasayf extends StatefulWidget {
  const Anasayf({super.key});

  @override
  State<Anasayf> createState() => _AnasayfState();
}

class _AnasayfState extends State<Anasayf> {
  @override
  Widget build(BuildContext context) {
    var ekranBilgisi = MediaQuery.of(context);
    final double ekranYuksekligi = ekranBilgisi.size.height;
    final double ekranGenisligi = ekranBilgisi.size.width;
    print("Ekran yüksekliği : $ekranYuksekligi");
    print("Ekran genişliği : $ekranGenisligi");

    return  Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(title: const Text("", style:
      TextStyle(
        fontWeight: FontWeight.bold, fontFamily: "Shadow", fontSize: 20,)),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.deepPurple,
        actions: [
          TextButton(onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Anasayf()));
          },
            child: Row(
              children: [
                TextButton(
                    onPressed: () {
                      Navigator.push(
                          context, MaterialPageRoute(builder: (context) => Player()));
                    },
                    child: Row(
                      children: [
                        Icon(Icons.video_collection_rounded, color: Colors.white),
                        SizedBox(width: 4),
                        Text(
                          'İzle',
                          style: TextStyle(color: Colors.white),)]),),



           TextButton(
                onPressed: () {
               Navigator.push(
               context, MaterialPageRoute(builder: (context) => ToDo()));
             },
               child: Row(
           children: [
                 Icon(Icons.note_alt_outlined, color: Colors.white),
                 SizedBox(width: 4),
                 Text(
               'Görevler',
                style: TextStyle(color: Colors.white),),],)),]))]),

      body:
      Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children:

        [
          Container(width: ekranGenisligi,
            height: ekranYuksekligi / 2.5,
            color: Colors.deepPurple,
            child: Padding(
              padding: const EdgeInsets.all(64),

              child: Padding(
                padding: const EdgeInsets.only(right: 2.0,left: 2.0,top: 8),
                child: Text(
                  "Merhaba Dijital İzci! Dijital farkındalığını artırmak için keşfetmeye başla!",
                  style:
                  TextStyle(fontWeight: FontWeight.bold,
                      fontFamily: "Shadow",
                      fontSize: 37,
                      color: Colors.white),),
              ),


            ),

          ),


          ElevatedButton(onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => CoktanSecmeliTest()));
          },
            child: Text("Kendiini test et!"),
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0),),),),


          Padding(
            padding: const EdgeInsets.only(top: 0),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: ekranGenisligi / 2.2,
                  height: ekranYuksekligi / 13,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.lightGreen,
                      foregroundColor: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (
                          context) => SayfaBir()));
                    },
                    child: const Text("Dijital Ayak İzi ve Gizlilik",
                      style: TextStyle(fontSize: 15,),),
                  ),
                ),
                SizedBox(
                  width: ekranGenisligi / 2.2,
                  height: ekranYuksekligi / 13,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.lightBlueAccent,
                      foregroundColor: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (
                          context) => SayfaIki()));
                    },
                    child: const Text("Sosyal Medya Bilinci",
                      style: TextStyle(fontSize: 15, color: Colors.white),),
                  ),
                ),
              ],
            ),
          )
          ,
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: ekranGenisligi / 2.2,
                height: ekranYuksekligi / 13,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.pinkAccent,
                    foregroundColor: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SayfaUc()));
                  },
                  child: const Text(
                    "Dijital Şiddet", style: TextStyle(fontSize: 15),),
                ),
              ),
              SizedBox(
                width: ekranGenisligi / 2.2, // Butonun genişliği
                height: ekranYuksekligi / 13, // Butonun yüksekliği
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.amberAccent,
                    foregroundColor: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Sayfa9()));
                  },
                  child: const Text("Yardım ve Destek Mekanizmaları",
                    style: TextStyle(fontSize: 15,),),
                ),
              ),

            ],
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: ekranGenisligi / 2.2, // Butonun genişliği
                height: ekranYuksekligi / 13, // Butonun yüksekliği
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black12,
                    foregroundColor: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SayfaBes()));
                  },
                  child: const Text("Sosyal Mühendislik Tehlikeleri",
                    style: TextStyle(fontSize: 15,),),
                ),
              ),
              SizedBox(
                width: ekranGenisligi / 2.2, // Butonun genişliği
                height: ekranYuksekligi / 13, // Butonun yüksekliği
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepOrange,
                    foregroundColor: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SayfaAlti()));
                  },
                  child: const Text("Ebeveyn ve Çocuk Güvenliği",
                    style: TextStyle(fontSize: 15,),),
                ),
              ),
            ],
          ),


          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: ekranGenisligi / 2.2, // Butonun genişliği
                  height: ekranYuksekligi / 13, // Butonun yüksekliği
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepPurpleAccent,
                      foregroundColor: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => SayfaYedi()));
                    },
                    child: const Text("Dijital Empati ve Saygı",
                      style: TextStyle(fontSize: 15,),),
                  ),
                ),
                SizedBox(
                  width: ekranGenisligi / 2.2, // Butonun genişliği
                  height: ekranYuksekligi / 13, // Butonun yüksekliği
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.greenAccent,
                      foregroundColor: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => SayfaSekiz()));
                    },
                    child: const Text(
                      "Dijital Detoks", style: TextStyle(fontSize: 15,),),
                  ),
                ),

              ]),
        ],
      ),
    );
  }
}



