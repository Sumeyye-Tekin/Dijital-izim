import 'package:flutter/material.dart';
import 'package:widgets_kullanimi/anasayf.dart';


class CoktanSecmeliTest extends StatefulWidget {
  @override
  _CoktanSecmeliTestState createState() => _CoktanSecmeliTestState();
}

class _CoktanSecmeliTestState extends State<CoktanSecmeliTest> {
  int currentQuestionIndex = 0;
  int score = 0;
  int? selectedAnswer; // Seçilen yanıtı saklamak için değişken

  final List<Map<String, dynamic>> questions = [
    {
      'soru': 'Sosyal medya hesaplarınızda gizlilik ayarlarınızı kontrol ediyor musunuz?',
      'secenekler': [
        {'text': 'Evet', 'puan': 10},
        {'text': 'Hayır', 'puan': 0},
        {'text': 'Bazen', 'puan': 5},
      ]
    },
    {
      'soru': 'Dijital ayak izinizi bilerek mi yönetiyorsunuz?',
      'secenekler': [
        {'text': 'Evet, dikkatliyim', 'puan': 10},
        {'text': 'Hayır, umursamıyorum', 'puan': 0},
        {'text': 'Bazen kontrol ediyorum', 'puan': 5},
      ]
    },
    {
      'soru': 'Şifrelerinizi düzenli olarak değiştiriyor musunuz?',
      'secenekler': [
        {'text': 'Evet, her 3 ayda bir değiştiriyorum', 'puan': 10},
        {'text': 'Hayır, hiç değiştirmiyorum', 'puan': 0},
        {'text': 'Bazen değiştiriyorum', 'puan': 5},
      ]
    },
    {
      'soru': 'Siber zorbalık ile karşılaştığınızda ne yaparsınız?',
      'secenekler': [
        {'text': 'Hemen bildiririm', 'puan': 10},
        {'text': 'Sessiz kalırım', 'puan': 0},
        {'text': 'Durumu değerlendiririm', 'puan': 5},
      ]
    },
    {
      'soru': 'Kişisel bilgilerinizi çevrimiçi paylaşırken dikkatli misiniz?',
      'secenekler': [
        {'text': 'Evet, her zaman dikkatliyim', 'puan': 10},
        {'text': 'Hayır, dikkat etmiyorum', 'puan': 0},
        {'text': 'Bazen dikkat ediyorum', 'puan': 5},
      ]
    },
  ];

  void answerQuestion(int puan) {
    setState(() {
      score += puan;
      currentQuestionIndex++;
      selectedAnswer = null;
    });

    if (currentQuestionIndex >= questions.length) {
      showResult();
    }
  }

  void showResult() {
    String seviye;
    if (score >= 40) {
      seviye = "Tebrikler, süpersin izci!";
    } else if (score >= 25) {
      seviye = "İyisin izci ama daha iyi olabilirsin.";
    } else {
      seviye = "Farkındalığını arttırmalısın izci!";
    }

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Test Sonucu'),
        content: Text('Sonucunuz:  $seviye\nPuanınız: $score'),
        actions: [
          TextButton(
            onPressed: () {
              setState(() {
                currentQuestionIndex = 0;
                score = 0;
              });
              Navigator.of(context).pop();
            },
            child: Text('Tekrar Dene'),
          ),
          TextButton(
            onPressed: () {
              setState(() {
                currentQuestionIndex = 0;
                score = 0;
              });
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Anasayf()));
            },
            child: Text('Kapat'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Dijital Farkındalık Testi')),
      body: currentQuestionIndex < questions.length
          ? Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              questions[currentQuestionIndex]['soru'],
              style: TextStyle(fontSize: 20),
            ),
            ...questions[currentQuestionIndex]['secenekler']
                .map<Widget>((secenek) => ListTile(
              title: Text(secenek['text']),
              leading: Radio<int>(
                value: secenek['puan'],
                groupValue: selectedAnswer,
                onChanged: (int? value) {
                  setState(() {
                    selectedAnswer = value;
                  });
                },
              ),
            ))
                .toList(),
            ElevatedButton(
              onPressed: () {
                if (selectedAnswer != null) {
                  answerQuestion(selectedAnswer!);
                }
              },
              child: Text('Cevabı Onayla'),
            ),
          ],
        ),
      )
          : Center(child: Text("Test Tamamlandı")),
    );
  }
}