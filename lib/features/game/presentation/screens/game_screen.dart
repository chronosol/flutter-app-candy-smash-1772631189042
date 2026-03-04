import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:candy_smash/features/game/presentation/controllers/game_controller.dart';
import 'package:candy_smash/features/game/presentation/widgets/candy_grid.dart';

class GameScreen extends ConsumerWidget {
  const GameScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final gameState = ref.watch(gameControllerProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Candy Smash - Game'),
      ),
      body: gameState.when(
        data: (game) => CandyGrid(game: game),
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, stack) => Center(child: Text('Error: $e')),
      ),
    );
  }
}