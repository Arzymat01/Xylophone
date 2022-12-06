import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF213438),
        title: const Text('Xylophone'),
        centerTitle: true,
      ),
      body: Column(
        children: const [
          Customcard(
            number: 1,
            color: Color(0xFFEF443A),
          ),
          Customcard(
            number: 2,
            color: Color(0xFFF99700),
          ),
          Customcard(
            number: 3,
            color: Color(0xFFFFE93B),
          ),
          Customcard(
            number: 4,
            color: Color(0xFF4CB050),
          ),
          Customcard(
            number: 5,
            color: Color(0xFF2E968C),
          ),
          Customcard(
            number: 6,
            color: Color(0xFF2996F5),
          ),
          Customcard(
            number: 7,
            color: Color(0xFF9B28B1),
          ),
        ],
      ),
    );
  }
}

class Customcard extends StatelessWidget {
  const Customcard({
    Key? key,
    required this.number,
    required this.color,
  }) : super(key: key);
  final int number;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: () {
          AudioPlayer().play(
            AssetSource('notes/note$number.wav'),
          );
        },
        child: Container(
          color: color,
        ),
      ),
    );
  }
}
