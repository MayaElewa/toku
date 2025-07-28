import 'package:audioplayers/audioplayers.dart';

class ItemModel {
  final String sound;
  final String image;
  final String jpName;
  final String enName;
  const ItemModel(
      {required this.sound,
      required this.image,
      required this.jpName,
      required this.enName
      //, required String image1
      //, required String image1
      });

  playSound() {
    final player = AudioPlayer();
    player.play(AssetSource(sound));
  }
}
