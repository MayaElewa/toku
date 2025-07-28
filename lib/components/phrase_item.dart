// lib/components/phrase_item.dart

import 'package:flutter/material.dart';
import 'package:chatapp/models/phrasemodel.dart';

class PhraseItem extends StatelessWidget {
  final ModelPhrases item;
  final Color color;

  const PhraseItem({super.key, required this.item, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: color,
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(item.jpName,
                      style: const TextStyle(color: Colors.white, fontSize: 18)),
                  Text(item.enName,
                      style: const TextStyle(color: Colors.white, fontSize: 14)),
                ],
              ),
            ),
          ),
          IconButton(
            icon: const Icon(Icons.play_arrow, color: Colors.white),
            onPressed: () {
              item.playSound();
            },
          )
        ],
      ),
    );
  }
}