import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:candy_smash/features/game/domain/entities/game.dart';
import 'package:candy_smash/features/game/domain/repositories/game_repository.dart';

final gameRepositoryProvider = Provider<GameRepository>((ref) {
  return GameRepositoryImpl();
});

class GameRepositoryImpl implements GameRepository {
  @override
  Future<Game> loadGame() async {
    // Dummy implementation of a game load
    final candies = List.generate(
      64,
      (index) => Candy(Colors.accents[index % Colors.accents.length]),
    );
    return Game(candies: candies);
  }
}