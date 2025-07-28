import 'package:audioplayers/audioplayers.dart';
//import 'package:just_audio/just_audio.dart';
//import 'package:chatapp/components/items.dart';
//import 'package:audioplayers/audioplayers.dart';

class ModelPhrases {
  final String sound;
  final String jpName;
  final String enName;
  const ModelPhrases(
      {required this.sound, 
      required this.jpName,
      required this.enName});

 void playSound() {
    final player = AudioPlayer();
    player.play(AssetSource(sound));
  }
}

