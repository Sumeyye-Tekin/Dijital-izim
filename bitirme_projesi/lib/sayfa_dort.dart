import 'package:flutter/material.dart';

class Sayfa9 extends StatefulWidget {
  const Sayfa9({super.key});

  @override
  State<Sayfa9> createState() => _SayfaDortState();
}

class _SayfaDortState extends State<Sayfa9> {
  double _textSize = 18.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Yardım ve Destek Mekanizmaları",
          style: TextStyle(fontFamily: "Merienda", fontSize: 20, color: Colors.white),
        ),
        backgroundColor: Colors.amberAccent,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Image.asset(
                "resimler/help-1013700_1280.jpg",
                width: 250, // Genişlik
                height: 250, // Yükseklik
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Dijital şiddet, bireylerin çevrimiçi ortamda maruz kaldığı zorbalık, taciz ve diğer saldırgan davranışları içerir. Bu nedenle, mağdurların başvurabileceği yardım ve destek mekanizmaları büyük önem taşır. İşte bu mekanizmalardan bazıları:\n\nEğitim ve Farkındalık Programları: Okullarda ve topluluk merkezlerinde düzenlenen eğitimler, bireylerin dijital şiddeti tanımalarına ve önlemelerine yardımcı olur.\n\nDanışmanlık Hizmetleri: Profesyonel psikologlar tarafından sunulan destek, mağdurların duygusal yaralarını sarmalarına yardımcı olur.\n\nYardım Hatları ve Destek Grupları: Anonim yardım hatları ve destek grupları, mağdurların deneyimlerini paylaşmalarına ve destek bulmalarına olanak tanır.\n\nHukuki Destek: Mağdurların hukuki hakları hakkında bilgilendirilmesi, mahkemeye başvurmalarını ve destek almalarını kolaylaştırır.\n\nÇevrimiçi Güvenlik Araçları: Sosyal medya hesaplarını koruma altına almayı sağlayan çeşitli güvenlik araçları mevcuttur.\n\nSosyal Medya Sorumluluğu: Platformlar, kullanıcıların dijital şiddet olaylarını bildirebilecekleri mekanizmalar oluşturmalı ve mağdurlara hızlı destek sağlamalıdır.\n\nToplumsal Destek: Aile, arkadaş ve toplum bireyleri, dijital şiddet mağdurlarına destek olmalı ve cesaretlendirmelidir.",
                    style: TextStyle(fontFamily: "Merienda", fontSize: _textSize),
                  ),
                  SizedBox(height: 16),
                  Slider(
                    value: _textSize,
                    min: 10.0,
                    max: 40.0,
                    divisions: 30,
                    label: _textSize.toStringAsFixed(1),
                    onChanged: (value) {
                      setState(() {
                        _textSize = value;
                      });
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}