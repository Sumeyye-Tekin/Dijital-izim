import 'package:flutter/material.dart';

class Giris extends StatefulWidget {
  const Giris({super.key});

  @override
  State<Giris> createState() => _GirisState();
}

class _GirisState extends State<Giris> {
  @override
  Widget build(BuildContext context) {
    var ekranBilgisi = MediaQuery.of(context);
    final double ekranYuksekligi = ekranBilgisi.size.height;
    final double ekranGenisligi = ekranBilgisi.size.width;
    print("Ekran yüksekliği : $ekranYuksekligi");
    print("Ekran genişliği : $ekranGenisligi");

    return Scaffold(
      body: Center(
        child: Column(
          children: [

            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 16,top: 200),
                child: Text("Merhaba.\nHoşgeldin",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:16 ),
              child: Padding(
                padding: const EdgeInsets.only(top: 10),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Kullanıcı Adı",
                    enabledBorder: UnderlineInputBorder(
                      borderSide:BorderSide(
                        color: Colors.black54,
                      )
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black54,
                      )
                    )
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Şifre",
                    enabledBorder: UnderlineInputBorder(
                        borderSide:BorderSide(
                          color: Colors.black54,
                        )
                    ),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black54,
                        )
                    )
                ),
              ),
            ),
            ElevatedButton(onPressed: (){
              
            }, child: Text("Giriş Yap")),

            Align(
              alignment: Alignment.bottomRight,
              child:  Container(
                width: ekranGenisligi,height: ekranYuksekligi/3,color: Colors.deepPurpleAccent,
              ),
            ),

            Column(
              children: [

              ],
            )
          ],
        ),

      )
    );
  }
}
