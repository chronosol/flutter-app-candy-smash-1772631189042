import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:candy_smash/features/game/domain/usecases/load_game_usecase.dart';

final gameControllerProvider = FutureProvider.autoDispose((ref) async {
  final loadGame = ref.watch(loadGameUsecaseProvider);
  return loadGame();
});