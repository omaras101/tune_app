import 'package:flutter/material.dart';
import 'package:tune_app/models/tune_model.dart';
import 'package:tune_app/widgets/tune_items.dart';


class HomeViue extends StatelessWidget {
   const HomeViue({super.key});

  final List<Tune> tuneColor = const  [
    Tune(color: Colors.red, sound: "note1.wav"),
    Tune(color: Colors.blue, sound: "note2.wav"),
    Tune(color: Colors.green, sound: "note3.wav"),
    Tune(color: Colors.pink, sound: "note4.wav"),
    Tune(color: Colors.yellow, sound: "note5.wav"),
    Tune(color: Colors.black, sound: "note6.wav"),
    Tune(color: Colors.purple, sound: "note7.wav"),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: const Color.fromARGB(255, 103, 102, 101),
            centerTitle: true,
            title: const Text("Tune app"),
          ),
          backgroundColor: const Color.fromARGB(255, 255, 255, 255),
          body: Column(
            children: tuneColor.map((e) => TuneItems(information:  e)).toList(),
          )),
    );
  }
}
