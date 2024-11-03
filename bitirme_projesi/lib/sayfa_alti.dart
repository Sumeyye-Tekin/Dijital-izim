import 'package:flutter/material.dart';

class SayfaAlti extends StatefulWidget {
  const SayfaAlti({super.key});

  @override
  State<SayfaAlti> createState() => _SayfaAltiState();
}

class _SayfaAltiState extends State<SayfaAlti> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: const Text("Ebeveyn ve Çocuk Güvenliği",style: TextStyle(fontFamily: "Merienda",fontSize: 20,color: Colors.white),
      ),backgroundColor: Colors.deepOrange,
      ),
      body: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Image.asset(
                  "resimler/boy-8515713_1280.png",
                  width: 300, // Genişlik
                  height: 300, // Yükseklik
                  fit: BoxFit.cover,
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:  [Text('Dijital farkındalık, günümüz çocuklarının çevrimiçi güvenliğini sağlamak için son derece önemlidir. '
                'Ebeveynler, çocukların interneti nasıl kullanacakları ve dijital ortamlardaki riskler hakkında bilinçlenmelerine yardımcı olmalıdır.\n\n'

                'Ebeveynler, çocuklarıyla birlikte internetin potansiyel tehlikeleri hakkında açık bir iletişim kurarak, '
                'onları güvende tutmak için gerekli bilgileri paylaşmalıdır. Gizlilik ayarlarını kontrol etmek, güçlü şifreler '
                'kullanmak ve şüpheli içeriklere karşı dikkatli olmak, alınması gereken pratik önlemlerdir.\n\n'

                'Ebeveynlerin dijital dünyaya aktif katılımı, çocukların güvenli bir çevrimiçi deneyim yaşamalarını sağlamak için kritik öneme sahiptir. '
                    'Eğitim, farkındalık ve sürekli iletişim, dijital dünyada ebeveyn-çocuk güvenliğini artırmada önemli bir rol oynar.',
                    style: TextStyle(fontFamily: "Merienda",fontSize: 18),), ],
                ),
              ),
            ],
          )
      ),
    );
  }
}

