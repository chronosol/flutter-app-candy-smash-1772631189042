import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:candy_smash/features/game/data/repositories/game_repository_impl.dart';
import 'package:candy_smash/features/game/domain/entities/game.dart';

final loadGameUsecaseProvider = Provider((ref) {
  final repository = ref.watch(gameRepositoryProvider);
  return LoadGameUsecase(repository: repository);
});

class LoadGameUsecase {
  final GameRepository repository;

  LoadGameUsecase({required this.repository});

  Future<Game> call() async {
    return await repository.loadGame();
  }
}