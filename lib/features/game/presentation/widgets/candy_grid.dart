import 'package:flutter/material.dart';
import 'package:candy_smash/features/game/domain/entities/game.dart';

class CandyGrid extends StatelessWidget {
  final Game game;

  const CandyGrid({Key? key, required this.game}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 8),
      itemCount: game.candies.length,
      itemBuilder: (context, index) {
        return Container(
          margin: const EdgeInsets.all(2.0),
          decoration: BoxDecoration(
            color: game.candies[index].color,
            borderRadius: BorderRadius.circular(8.0),
          ),
        );
      },
    );
  }
}