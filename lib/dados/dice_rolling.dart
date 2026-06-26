import 'package:flutter/material.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  final Random _randomizer = Random(); // Random movido para dentro da classe
  int currentDiceRoll = 2;

  void rollDice() {
    setState(() {
      currentDiceRoll = _randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Imagem do dado com animação suave
        AnimatedSwitcher(
          duration: const Duration(milliseconds: 300),
          child: Image.asset(
            'assets/images/dice-$currentDiceRoll.png',
            key: ValueKey(currentDiceRoll),
            width: 200,
            height: 200,
          ),
        ),
        const SizedBox(height: 40),

        // Botão melhorado
        ElevatedButton(
          onPressed: rollDice,
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 16),
            backgroundColor: Colors.white.withOpacity(0.15),
            foregroundColor: Colors.white,
            textStyle: const TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            elevation: 8,
          ),
          child: const Text('Roll Dice'),
        ),
      ],
    );
  }
}
