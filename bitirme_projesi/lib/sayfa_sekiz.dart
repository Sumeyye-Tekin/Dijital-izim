import 'package:flutter/material.dart';

class SayfaSekiz extends StatefulWidget {
  const SayfaSekiz({super.key});

  @override
  State<SayfaSekiz> createState() => _SayfaSekizState();
}

class _SayfaSekizState extends State<SayfaSekiz> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Dijital Detox",
        style: TextStyle(
            fontFamily: "Merienda", fontSize: 20, color: Colors.white),
      ), backgroundColor: Colors.greenAccent,
      ),
      body: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Image.asset(
                  "resimler/books-7309019_1280.png",
                  width: 300, // Genişlik
                  height: 300, // Yükseklik
                  fit: BoxFit.cover,
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:  [Text('Dijital detoks, bireylerin teknoloji ve dijital cihazlardan belirli bir süre uzaklaşarak, '
                      'zihinsel ve duygusal sağlıklarını yeniden kazanmayı amaçladığı bir süreçtir. '
                      'Günümüzde, sosyal medya, akıllı telefonlar ve diğer dijital platformlar, insanların yaşamlarının önemli bir parçası haline gelmiştir. '
                      'Bu durum, sıkça stres, anksiyete ve sosyal izolasyon gibi sorunlara yol açabilir.\n\n'

                      'Dijital detoks uygulamak, bireylerin zihinsel sağlıklarını korumalarına yardımcı olabilir. '
                      'Bu süre zarfında, insanlarla yüz yüze iletişim kurma fırsatı bulur, doğayla etkileşimde bulunur ve hobilerine zaman ayırabilirler. '
                      'Dijital cihazlardan uzaklaşmak, bireylerin dikkatlerini yeniden odaklamalarına ve yaratıcılıklarını artırmalarına yardımcı olur.\n\n'

                      'Dijital detoks süresi kişiden kişiye değişebilir; bazıları için birkaç saat, bazıları içinse birkaç gün veya daha uzun sürebilir. '
                      'Bu süreçte, günlük yaşamda dijital cihazların yerini dolduracak alternatifler bulmak önemlidir. '
                      'Okuma, spor yapma, meditasyon ve sanat gibi aktiviteler, dijital detoks sırasında yapılabilecek harika seçeneklerdir.\n\n'

                      'Sonuç olarak, dijital detoks, bireylerin teknolojiyle olan ilişkilerini yeniden değerlendirmelerine ve daha dengeli bir yaşam sürmelerine yardımcı olur. '
                      'Kendinize bir dijital detoks süresi ayırarak, zihinsel sağlığınızı güçlendirebilir ve yaşam kalitenizi artırabilirsiniz.',
                    style: TextStyle(fontFamily: "Merienda",fontSize: 18),)  ],
                ),
              ),
            ],
          )
      ),
    );
  }
}

