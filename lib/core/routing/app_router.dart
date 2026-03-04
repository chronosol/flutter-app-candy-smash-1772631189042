import 'package:go_router/go_router.dart';
import 'package:candy_smash/features/game/presentation/screens/game_screen.dart';
import 'package:candy_smash/features/home/presentation/screens/home_screen.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/game',
      builder: (context, state) => const GameScreen(),
    ),
  ],
);