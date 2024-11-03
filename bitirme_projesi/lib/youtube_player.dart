import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Player extends StatefulWidget {
  const Player({super.key});

  @override
  State<Player> createState() => _PlayerState();
}

class _PlayerState extends State<Player> {
  late List<YoutubePlayerController> _controllers;

  final List<String> videoIds = [
    "NmZ0_f1mKRg",
    "mM077zJqpbY",
    "7EiF5PiIHXY",
    "waPSZnuPxOY",
    "QAinpO3Edwg"];

  @override
  void initState() {
    super.initState();
    _controllers = videoIds
        .map((videoId) => YoutubePlayerController(
      initialVideoId: videoId,
      flags: YoutubePlayerFlags(
        autoPlay: false, // Otomatik oynatma kapalı
        mute: false, // Ses açık
      ),
    ))
        .toList();
  }

  @override
  void dispose() {
    for (var controller in _controllers) {
      controller.dispose(); // Her kontrolörü serbest bırak
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [Text("İzleyelim,Öğrenelim",style: TextStyle(color: Colors.white),
            ),
           Text("Videolar Da Vinci Türkiye Youtube kanalına  aittir.",
             style: TextStyle(fontSize: 14,color: Colors.white),)]),
        backgroundColor: Colors.deepPurple,),

    
    
      body: ListView.builder(
        itemCount: _controllers.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(top: 7.0),
            child: Column(
              children: [
                YoutubePlayer(
                  controller: _controllers[index],
                  showVideoProgressIndicator: true,
                  progressIndicatorColor: Colors.white,
                ),
              ],
            ),

          );

        },
      ),

    );
  }
}