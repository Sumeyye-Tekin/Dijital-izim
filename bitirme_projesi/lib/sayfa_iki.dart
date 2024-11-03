import 'package:flutter/material.dart';

class SayfaIki extends StatefulWidget {
  const SayfaIki({super.key});

  @override
  State<SayfaIki> createState() => _SayfaIkiState();
}

class _SayfaIkiState extends State<SayfaIki> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: const Text("Sosyal Medya Bilinci",style: TextStyle(fontFamily: "Merienda",fontSize: 20,color: Colors.white),
      ),backgroundColor: Colors.lightBlueAccent,
      ),
        body: SingleChildScrollView(
          child: Column(
            children: [
          Center(
          child: Image.asset(
          "resimler/social-media-3846597_1280.png",
            width: 300, // Genişlik
            height: 300, // Yükseklik
            fit: BoxFit.cover,
          ),
        ),
        const Padding(
        padding: EdgeInsets.all(16.0),
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children:  [Text("Sosyal medya, günümüzde iletişim, bilgi paylaşımı ve etkileşim açısından oldukça önemli bir yere sahip. Ancak, bu platformların yoğun kullanımı beraberinde sosyal medya bilinci kavramını da gerektiriyor. Sosyal medya bilinci, bireylerin dijital ortamda paylaşımlarının, davranışlarının ve etkileşimlerinin olası etkilerini fark etmeleri ve bu bağlamda sorumlu davranmaları anlamına gelir.\n\n 1. Kişisel Gizlilik ve Güvenlik\n Sosyal medya bilinci, öncelikle gizlilik ve güvenlik anlayışını içerir. Kişisel bilgilerin, fotoğrafların, yer bildirimlerinin ve özel anların paylaşımı, bireylerin gizliliğini tehlikeye atabilir. Paylaşılan bu bilgilerin kalıcı olduğunu ve kimler tarafından görülebileceğini düşünmek, olası güvenlik risklerini en aza indirir. Örneğin, kimlik bilgileri ya da finansal veriler gibi hassas bilgileri sosyal medya hesaplarında paylaşmamak, bu bilincin en temel uygulamalarından biridir.\n\n2. Olumlu ve Saygılı Etkileşim\nSosyal medya, herkesin düşüncelerini özgürce ifade edebildiği bir ortamdır; ancak bu ifade özgürlüğünün, başkalarına saygı göstermeyi de içermesi gerekir. Olumlu ve yapıcı yorumlar yapmak, çevrimiçi tartışmalarda nezaket kurallarına uymak, sosyal medya bilincinin önemli bir parçasıdır. Dijital ortamda saygılı bir tavır sergilemek, hem bireyin kendi itibarı açısından hem de topluluklar için sağlıklı bir etkileşim ortamı oluşturur.\n\n3. Bilgi Kirliliğinden Korunma\nSosyal medyada dolaşan her bilginin doğru olduğu varsayılmamalıdır. Bilgi kirliliğine karşı korunmak ve paylaşılan içeriklerin doğruluğunu sorgulamak, sosyal medya bilincinin bir gereğidir. Yanlış bilgi yaymak, toplumu yanıltmakla kalmaz; aynı zamanda bireylerin güvenilirliğini de zedeler. Bu nedenle, paylaşılacak bilgilerin güvenilir kaynaklardan alınmış olmasına özen göstermek, bilgi kirliliğinin önüne geçmeye katkı sağlar.\n\n4. Sosyal Medya ve Zaman YönetimiSosyal medya platformları bağımlılık yaratabilecek özelliklere sahip olabilir. Saatlerce zaman geçirmek, kişisel gelişim, aile ve arkadaş ilişkileri ve günlük sorumluluklar üzerinde olumsuz etki bırakabilir. Sosyal medya bilincine sahip bir birey, bu platformlarda geçirdiği süreyi yönetmeyi öğrenir ve sosyal medya ile gerçek yaşam arasındaki dengeyi korur.\n\n5. Sosyal Medya Ayak İzini Yönetme\nSosyal medya paylaşımlarınız dijital ayak izinizi oluşturur ve kalıcıdır. Gelecekte iş başvuruları, eğitim fırsatları veya sosyal ilişkiler üzerinde etkili olabileceği için paylaşımlarınızı dikkatlice seçmek önemlidir.\nSosyal medya bilinci, bireylerin dijital dünyada bilinçli bir şekilde var olabilmelerine yardımcı olur. Kendimizi, toplumu ve çevrimiçi alanı korumak adına, bu bilince sahip olarak sosyal medya kullanımı gerçekleştirmek, uzun vadede hem bireysel hem de toplumsal açıdan olumlu sonuçlar doğuracaktır.",style: TextStyle(fontFamily: "Merienda",fontSize: 18),),
    ],
    ),
    ),
      ],
    )
        ),
    );
  }
}

