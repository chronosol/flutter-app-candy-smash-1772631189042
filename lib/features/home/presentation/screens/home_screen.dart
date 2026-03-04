import 'package:flutter/material.dart';
import 'package:candy_smash/shared/widgets/primary_button.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Candy Smash'),
      ),
      body: Center(
        child: PrimaryButton(
          text: 'Start Game',
          onPressed: () => context.push('/game'),
        ),
      ),
    );
  }
}