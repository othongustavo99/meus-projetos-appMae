import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DaText extends StatelessWidget {
  const DaText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Primeira caixa
        _buildCodeBox(
          title: 'dice.dart',
          text: '''class MyDice extends StatelessWidget {
  const MyDice({super.key});

  @override
  Widget build(BuildContext context) {
    return const GradientContainer.purple();
  }
}

''',
        ),

        const SizedBox(height: 30),

        // Título da segunda caixa
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'roll_dice.dart',
              style: GoogleFonts.lato(
                color: Colors.black,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),

        const SizedBox(height: 12),

        // Segunda caixa
        _buildCodeBox(
          text: '''
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
            'assets/images/dice-currentDiceRoll.png',
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

''',
        ),
        const SizedBox(height: 30),

        // Título da segunda caixa
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'gradient_dice.dart',
              style: GoogleFonts.lato(
                color: Colors.black,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        const SizedBox(height: 12),

        // Segunda caixa
        _buildCodeBox(
          text: '''class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color1, this.color2, {super.key});

  const GradientContainer.purple({super.key})
    : color1 = Colors.deepPurple,
      color2 = Colors.purple;

  final Color color1;
  final Color color2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context); // Volta para a tela anterior (Home)
          },
        ),
        title: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(width: 8),
            Text(
              'Roll Dice',
              style: TextStyle(
                color: Colors.white,
                shadows: [
                  Shadow(
                    blurRadius: 4.0,
                    color: Colors.black,
                    offset: Offset(1.5, 1.5),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [color1, color2],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: const Center(child: DiceRoller()),
      ),
    );
  }
}

''',
        ),
      ],
    );
  }

  // Widget reutilizável para criar as caixas de código
  Widget _buildCodeBox({required String text, String? title}) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.white.withOpacity(0.3)),
      ),
      child: SelectableText(
        text,
        style: const TextStyle(
          fontSize: 15,
          height: 1.6,
          color: Colors.black,
          fontFamily: 'monospace',
        ),
      ),
    );
  }
}
