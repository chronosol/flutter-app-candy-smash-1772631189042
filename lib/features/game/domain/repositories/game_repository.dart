import 'package:candy_smash/features/game/domain/entities/game.dart';

abstract class GameRepository {
  Future<Game> loadGame();
}