import 'package:flutter/material.dart';

class MyCount extends StatefulWidget {
  const MyCount({super.key});

  @override
  State<MyCount> createState() => _MyCountState();
}

class _MyCountState extends State<MyCount> {
  int count = 0;

  void increment() {
    setState(() => count++);
  }

  void decrement() {
    setState(() => count--);
  }

  bool get isEmpty => count == 0;
  bool get isFull => count >= 10;

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
              'Contador de Pessoas',

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
            colors: [Colors.purple, Colors.deepPurple],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),

        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                isFull ? 'Chega!' : 'Espaço Liberado!',
                style: const TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  shadows: [Shadow(color: Colors.black, blurRadius: 20)],
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 20),

              Text(
                '$count',
                style: TextStyle(
                  fontSize: 100,
                  color: isFull ? Colors.red : Colors.white,
                  shadows: const [Shadow(color: Colors.black, blurRadius: 20)],
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 30),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: isEmpty ? null : decrement,
                    child: const Text('Saiu'),
                  ),

                  const SizedBox(width: 30),

                  ElevatedButton(
                    onPressed: isFull ? null : increment,
                    child: const Text('Entrou'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
