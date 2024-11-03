import 'package:flutter/material.dart';

class SayfaYedi extends StatefulWidget {
  const SayfaYedi({super.key});

  @override
  State<SayfaYedi> createState() => _SayfaYediState();
}

class _SayfaYediState extends State<SayfaYedi> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: const Text("Dijital Empati ve Saygı",style: TextStyle(fontFamily: "Merienda",fontSize: 20,color: Colors.white),
      ),backgroundColor: Colors.deepPurpleAccent,
      ),
      body: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Image.asset(
                  "resimler/analysis-6232545_1280.jpg",
                  width: 300, // Genişlik
                  height: 300, // Yükseklik
                  fit: BoxFit.cover,
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:  [Text('Dijital empati, sanal ortamlarda başkalarının duygularını anlama ve saygı gösterme yeteneğidir. '
                      'Günümüzde, sosyal medya ve diğer çevrimiçi platformlar, bireyler arasında iletişim kurmak için yaygın olarak kullanılmaktadır. '
                      'Bu ortamlarda empati göstermek, karşılıklı anlayışı ve saygıyı artırır.\n\n'

                      'Dijital empati, insanların paylaşımlarını, duygusal durumlarını ve yaşadıkları zorlukları dikkate almayı gerektirir. '
                      'Kendimizi başkalarının yerine koyarak, onları daha iyi anlayabilir ve duygusal destek sağlayabiliriz. '
                      'Bu yaklaşım, dijital dünyada daha sağlıklı ve olumlu etkileşimler oluşturur.\n\n'

                      'Ayrıca, dijital saygı, çevrimiçi ortamlarda başkalarının haklarına, fikirlerine ve hislerine saygı duymayı içerir. '
                      'Bu, insanları kötüye kullanmaktan, siber zorbalıktan ve olumsuz yorumlardan kaçınmayı gerektirir. '
                      'Dijital dünyada saygılı olmak, herkesin güvenli ve destekleyici bir ortamda var olmasına katkıda bulunur.\n\n'

                      'Sonuç olarak, dijital empati ve saygı, çevrimiçi toplulukların sağlıklı bir şekilde gelişmesi için kritik öneme sahiptir. '
                      'Hepimiz, dijital dünyada daha anlayışlı ve saygılı olmayı benimseyerek, daha olumlu bir çevre yaratabiliriz.',
                    style: TextStyle(fontSize: 18,fontFamily: "Merienda"),)  ],
                ),
              ),
            ],
          )
      ),
    );
  }
}

