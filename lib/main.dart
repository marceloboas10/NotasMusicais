import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(MarimbaApp());

void tocarSom(int numeroMusica) {
  final player = AudioCache();
  player.play('nota$numeroMusica.wav');
}

Expanded criarBotao({Color cor, int numeroMusica}) {
  return Expanded(
    child: TextButton(
      onPressed: () {
        tocarSom(numeroMusica);
      },
      style: TextButton.styleFrom(backgroundColor: cor),
      child: null,
    ),
  );
}

class MarimbaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              criarBotao(cor: Colors.teal, numeroMusica: 1),
              criarBotao(cor: Colors.blue, numeroMusica: 2),
              criarBotao(cor: Colors.yellow, numeroMusica: 3),
              criarBotao(cor: Colors.red, numeroMusica: 4),
              criarBotao(cor: Colors.grey, numeroMusica: 5),
              criarBotao(cor: Colors.purple, numeroMusica: 6),
              criarBotao(cor: Colors.brown, numeroMusica: 7),
            ],
          ),
        ),
      ),
    );
  }
}
