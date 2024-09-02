import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

  class Tune {
  const  Tune({required  this.color, required this.sound});

    final String sound;
    final Color color;
    
  playAudio() async{
    final player = AudioPlayer();
   await player.play(AssetSource(sound));
  }
  }