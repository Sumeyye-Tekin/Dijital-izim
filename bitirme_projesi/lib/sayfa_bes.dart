import 'package:flutter/material.dart';

class SayfaBes extends StatefulWidget {
  const SayfaBes({super.key});

  @override
  State<SayfaBes> createState() => _SayfaBesState();
}

class _SayfaBesState extends State<SayfaBes> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: const Text("Sosyal Mühendislik Tehlikeleri",style: TextStyle(fontFamily: "Merienda",fontSize: 20,color: Colors.white),
      ),backgroundColor: Colors.black12,
      ),
      body: SingleChildScrollView(
          child: Column(
              children: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Image.asset(
                      "resimler/hacker-5471975_1280.png",
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
                    children:  [Text('Sosyal mühendislik, bireylerin güvenini manipüle ederek bilgi veya erişim elde etme yöntemi olarak tanımlanır. '
                  'Bu tür saldırılar, teknolojinin gelişmesiyle birlikte daha da yaygın hale gelmiştir. İşte sosyal mühendislik tehlikeleri hakkında bazı önemli noktalar:\n\n'

                  '1. Kimlik Avı (Phishing)\n'
                  'Tanım: Saldırganlar, güvenilir bir kaynaktan geliyormuş gibi görünen sahte e-postalar veya mesajlar göndererek '
                  'kullanıcıların kişisel bilgilerini, şifrelerini veya finansal bilgilerini elde etmeye çalışır.\n'
                  'Tehlike: Kullanıcı, gerçek bir hizmetten geldiğine inandığı bir linke tıklayarak kimlik bilgilerini tehlikeye atabilir.\n\n'

                    '2. Baiting (Açık Havada İkna)\n'
                    'Tanım: Saldırgan, kullanıcılara sahte bir ödül veya cazibe sunarak onları kötü amaçlı yazılımı yüklemeye veya '
                    'kişisel bilgilerini paylaşmaya ikna eder.\n'
                    'Tehlike: Kullanıcılar, çekici bir teklif uğruna sistemlerine zarar verebilecek yazılımlar indirerek saldırganlara açık hale gelir.\n\n'

                  '3. Pretexting (Önceki Durum Yaratma)\n'
                  'Tanım: Saldırgan, bir senaryo oluşturarak (örneğin, banka çalışanı, IT desteği vb.) kurbanın güvenini kazanır '
                  've ondan bilgi talep eder.\n'
                  'Tehlike: Kullanıcı, kendisine güvenen birini düşünerek özel bilgilerini paylaşabilir, bu da hesaplarının ve '
                  'verilerinin tehlikeye girmesine neden olur.\n\n'

                  '4. Tailgating (Arka Kapıdan Girmek)\n'
                    'Tanım: Bir kişi, bir güvenlik noktasından izinsiz geçiş yaparak güvenli bir alana girmeye çalışır. '
                    'Genellikle bir çalışan gibi görünerek başkalarının kapıyı açmasına neden olur.\n'
                    'Tehlike: Fiziksel erişim sağlayan saldırganlar, kurumsal verilere, sistemlere ve altyapıya zarar verebilir.\n\n'

                    '5. Vishing (Sesli Kimlik Avı)\n'
                  'Tanım: Telefon üzerinden gerçekleştirilen sosyal mühendislik saldırılarıdır. '
                  'Saldırgan, kurbanı arayarak kimlik bilgilerini veya diğer hassas bilgileri almaya çalışır.\n'
                  'Tehlike: Kullanıcı, gerçek bir bankanın veya hizmetin aradığını düşünerek şifrelerini paylaşabilir.\n\n'

                  '6. Smishing (SMS ile Kimlik Avı)\n'
                  'Tanım: Saldırganlar, SMS yoluyla sahte bağlantılar veya talepler göndererek kullanıcıları kandırmaya çalışır.\n'
                  'Tehlike: Kullanıcı, güvenilir bir kaynaktan geldiğini düşündüğü bir mesaj aracılığıyla zararlı bir bağlantıya tıklayabilir.\n\n'

                    '7. Veri İhlalleri\n'
                    'Tanım: Sosyal mühendislik saldırıları, kullanıcıların bilgilerini sızdırabilir ve bu da büyük veri ihlallerine yol açabilir.\n'
                    'Tehlike: İhlal edilen veriler, kimlik hırsızlığı, finansal dolandırıcılık ve diğer kötü niyetli faaliyetler için kullanılabilir.\n\n'

                    '8. Duygusal Manipülasyon\n'
                    'Tanım: Saldırganlar, kurbanların duygularını (korku, aciliyet, merhamet) manipüle ederek bilgi elde etmeye çalışır.\n'
                    'Tehlike: Kullanıcılar, hızlı kararlar alarak kendilerini koruma önlemlerini göz ardı edebilir.',
                    style: TextStyle(fontFamily:"Merienda",fontSize: 20),),
                    ],
                  ),
                ),
              ]
          )
      ),
    );
  }
}

