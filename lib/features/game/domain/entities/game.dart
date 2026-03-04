import 'package:flutter/material.dart';

class Game {
  final List<Candy> candies;

  Game({required this.candies});
}

class Candy {
  final Color color;

  Candy(this.color);
}