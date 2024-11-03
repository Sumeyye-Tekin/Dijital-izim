import 'package:flutter/material.dart';

class SayfaBir extends StatefulWidget {
  const SayfaBir({super.key});

  @override
  State<SayfaBir> createState() => _SayfaBirState();
}

class _SayfaBirState extends State<SayfaBir> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Dijital Ayak İzi ve Gizlilik",style: TextStyle(fontFamily: "Merienda",fontSize: 20,color: Colors.white),
    ),backgroundColor: Colors.lightGreen,
    ),
      body: SingleChildScrollView(
        child: Column(
          children: [
        Center(
        child: Image.asset(
        "resimler/icon-steps-1991839_1280.png",
          width: 250, // Genişlik
          height: 250, // Yükseklik
          fit: BoxFit.cover,
        ),
      ),
      const Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:  [Text("Dijital ayak izi, bireylerin çevrimiçi ortamda gerçekleştirdiği"
    " her türlü faaliyet sonucunda oluşan ve dijital ortamda bıraktıkları izlerdir. Bu izlerinanlaşılabilmesi için, dijital ayak izinin iki ana kategoride incelendiği dikkate alınmalıdır: aktif ve pasif ayak izleri.\n\n Aktif Dijital Ayak İzi\nAktif dijital ayak izi, bireylerin bilinçli bir şekilde paylaştıkları bilgileri içerir. Sosyal medya platformlarında yapılan paylaşımlar, yorumlar, beğeniler ve kişisel bilgilerin açık bir şekilde sunulması, aktif ayak izini oluşturur. Kullanıcılar, kendi görüşlerini ve deneyimlerini paylaşarak dijital kimliklerini oluştururlar. Bu paylaşımlar, bireylerin sosyal çevresiyle etkileşim kurmalarına olanak tanır. Örneğin, bir kullanıcı Facebook veya Instagram gibi platformlarda bir fotoğraf paylaştığında, bu fotoğraf yalnızca kendi dijital kimliğini yansıtmakla kalmaz; aynı zamanda takipçileriyle arasında bir bağ kurar ve onlardan geri bildirim alır.Bu tür paylaşımlar, bireylerin sosyal medyada nasıl algılandığı üzerinde büyük bir etki yaratır. Örneğin, bir kişinin sosyal medya hesaplarındaki içerikleri, onun kişiliği, yaşam tarzı ve değerleri hakkında bir izlenim oluşturur. Bu, kullanıcıların kendi imajlarını yönetmelerine ve hedef kitleleri üzerinde istenilen etkileri yaratmalarına yardımcı olur. Ancak bu tür bilgilerin yanlış kullanımı, bireylerin gizliliğini tehdit edebilir. Örneğin, paylaşılan özel bir bilgi, kötü niyetli kişiler tarafından istismar edilebilir.Aktif dijital ayak izinin bir diğer önemli boyutu, bireylerin çevrimiçi topluluklar içinde nasıl etkileşimde bulunduğudur. Forumlar, bloglar ve diğer çevrimiçi platformlarda yapılan tartışmalar, kullanıcıların görüşlerini ve uzmanlık alanlarını sergileme fırsatı sunar. Ancak burada da dikkatli olunması gerekir; çünkü bu etkileşimler, kullanıcıların dijital kimliklerini şekillendirirken aynı zamanda potansiyel riskler de taşır. Yetersiz bilgi güvenliği, yanlış anlaşılmalar ve kötü niyetli kişilerle karşılaşma olasılığı, aktif dijital ayak izinin oluşturduğu riskler arasındadır.\n\n Pasif Dijital Ayak İzi\nPasif dijital ayak izi, bireylerin çevrimiçi aktiviteleri sırasında, farkında olmadan oluşturduğu izlerdir. Kullanıcılar, web sitelerini ziyaret ettiklerinde, tarayıcıları aracılığıyla birçok bilgi otomatik olarak toplanır. Bu bilgiler arasında kullanıcıların tarayıcı geçmişi, IP adresleri, coğrafi konumları ve hangi sitelerde ne kadar süre geçirdikleri gibi detaylar bulunur. Pasif dijital ayak izi, genellikle kullanıcıların izni olmadan toplanır ve çoğunlukla pazarlama ve analiz amaçları için kullanılır. Örneğin, bir e-ticaret sitesine giren bir kullanıcı, hangi ürünleri görüntülediği, hangi kategorilere ilgi gösterdiği ve ne zaman siteyi terk ettiği gibi bilgilerle izlenir. Bu veriler, işletmelerin kullanıcı davranışlarını analiz etmelerine, hedef kitlelerini daha iyi anlamalarına ve daha etkili pazarlama stratejileri geliştirmelerine yardımcı olur. Ancak pasif izlerin toplanması, kullanıcıların gizliliği üzerinde olumsuz etkilere yol açabilir. Kullanıcılar, izlenmekten haberdar olmadan kişisel bilgilerinin toplandığını öğrenebilirler. Bu durum, dijital gizliliğin ihlali ve kimlik hırsızlığı gibi sorunlara yol açabilir. Pasif dijital ayak izi, ayrıca kullanıcıların çevrimiçi deneyimlerini de etkiler. Örneğin, bir kullanıcı bir web sitesini ziyaret ettiğinde, önceki davranışlarına dayalı olarak kişiselleştirilmiş içerikler ve reklamlar sunulabilir. Bu durum, kullanıcı deneyimini iyileştirebilirken, aynı zamanda kullanıcıların sürekli izlendikleri hissini de yaratabilir.",style: TextStyle(fontFamily: "Merienda",fontSize: 18),),
      ],
    ),
          ),

        ],
      )
      ),
    );
  }
}
