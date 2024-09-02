import 'package:flutter/material.dart';
import 'package:tune_app/models/tune_model.dart';

class TuneItems extends StatelessWidget {
  const TuneItems({super.key, required this.information});

  final Tune information;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () => information.playAudio(),
        child: Container(color: information.color),
      ),
    );
  }
}
