import 'package:flutter/material.dart';

class SayfaUc extends StatefulWidget {
  const SayfaUc({super.key});

  @override
  State<SayfaUc> createState() => _SayfaUcState();
}

class _SayfaUcState extends State<SayfaUc> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: const Text("Dijital Şiddet",style: TextStyle(fontFamily: "Merienda",fontSize: 20,color: Colors.white),
      ),backgroundColor: Colors.pinkAccent,
      ),
      body: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Image.asset(
                    "resimler/pexels-mikhail-nilov-6964173.png",
                    width: 300, // Genişlik
                    height: 300, // Yükseklik
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:  [Text("Dijital şiddet, bireylerin dijital ortamda maruz kaldığı her türlü saldırgan davranışı ifade eder. Bu tür bir şiddet, çevrimiçi platformlarda, sosyal medya ağlarında, mesajlaşma uygulamalarında ve diğer dijital iletişim araçlarında ortaya çıkabilir. Dijital şiddetin en yaygın biçimleri arasında siber zorbalık, taciz, tehdit, kimlik hırsızlığı ve cinsiyet temelli saldırılar yer alır. Özellikle gençler ve çocuklar, dijital şiddetin hedefi olma riski taşır; bu durum, onların psikolojik ve sosyal gelişimleri üzerinde olumsuz etkilere yol açabilir.\n\nDijital Şiddet Türleri\n\nSiber Zorbalık: Bu, bireylerin çevrimiçi olarak birbirlerine zarar vermek amacıyla kullandıkları bir davranış biçimidir. Bu tür zorbalık, alay etme, hakaret etme, iftira atma ve hatta cinsiyetçi, ırkçı veya homofobik saldırılar içerebilir. Siber zorbalık, mağdurlar üzerinde derin psikolojik etkilere yol açabilir, intihar düşünceleri veya depresyon gibi durumları tetikleyebilir.\n\nSiber Taciz: Kişilerin, istemedikleri mesajlar veya içerikler alması durumudur. Bu, tehdit içerikli mesajlar veya sürekli rahatsız edici iletişim şeklinde olabilir. Taciz, genellikle cinsiyet temelli olur ve özellikle kadınlar üzerinde yıkıcı bir etki yaratır\n\nKimlik Hırsızlığı: Bu, bir kişinin kimliğini çalarak sahte hesaplar açma veya finansal kazanç sağlama amacıyla kişisel bilgilerini kötüye kullanma durumudur. Bu tür bir saldırı, bireylerin itibarına ve güvenliğine ciddi zararlar verebilir.\n\nDijital İzleme: Bireylerin rızası olmadan çevrimiçi aktivitelerinin izlenmesi veya takip edilmesi durumudur. Bu durum, kullanıcıların kişisel bilgilerini ve mahremiyetlerini tehdit eder.",style: TextStyle(fontFamily: "Merienda",fontSize: 18),
                )
                ],
              ),
                ),
                ]
          )
      ),
    );
  }
}
