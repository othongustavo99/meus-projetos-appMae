import 'package:flutter/material.dart';
import 'package:meus_projetos/contador/counter.dart';
import 'package:meus_projetos/dados/dados.dart';
import 'prompts/prompt_earth.dart';
import 'prompts/prompt_rose.dart';
import 'prompts/prompt_photo.dart';
import 'package:meus_projetos/quiz/quiz.dart';
import 'package:meus_projetos/codigos/codigo_quiz.dart';
import 'package:meus_projetos/codigos/codigo_rolldart.dart';
import 'package:meus_projetos/listas/listas.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Meus Pequenos Projetos',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  void _openPage(BuildContext context, Widget page) {
    Navigator.push(context, MaterialPageRoute(builder: (_) => page));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
              child: Center(
                child: Text(
                  'Projetinhos Flutter',
                  style: TextStyle(fontSize: 24),
                ),
              ),
            ),

            // APPS
            const Padding(
              padding: EdgeInsets.only(left: 16, top: 8),
              child: Text(
                '📱 Aplicativos',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),

            ListTile(
              leading: const Icon(Icons.star),
              title: const Text('Flutter Quiz'),
              onTap: () => _openPage(context, const Quiz()),
            ),

            ListTile(
              leading: const Icon(Icons.casino),
              title: const Text('Roll Dice'),
              onTap: () => _openPage(context, const MyDice()),
            ),

            ListTile(
              leading: const Icon(Icons.people),
              title: const Text('Contador de Pessoas'),
              onTap: () => _openPage(context, const MyCount()),
            ),

            const Divider(),

            // PROMPTS
            const Padding(
              padding: EdgeInsets.only(left: 16, top: 8),
              child: Text(
                '🎨 Prompts',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),

            ListTile(
              leading: const Icon(Icons.public),
              title: const Text('Prompt Terra'),
              onTap: () => _openPage(context, const PromptScreen()),
            ),

            ListTile(
              leading: const Icon(Icons.local_florist),
              title: const Text('Prompt Rosa'),
              onTap: () => _openPage(context, const PromptRose()),
            ),

            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('Prompt Foto ++'),
              onTap: () => _openPage(context, const PromptPhoto()),
            ),

            const Divider(),

            const Padding(
              padding: EdgeInsets.only(left: 16, top: 8),
              child: Text(
                '📝 Listas',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.folder),
              title: const Text('JSON / Lista de Questões'),
              onTap: () => _openPage(context, const ListScreen()),
            ),

            const Divider(),

            // CÓDIGOS
            const Padding(
              padding: EdgeInsets.only(left: 16, top: 8),
              child: Text(
                '💻 Códigos',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),

            ListTile(
              leading: const Icon(Icons.code),
              title: const Text('Flutter / Quiz'),
              onTap: () => _openPage(context, const QuizCode()),
            ),

            ListTile(
              leading: const Icon(Icons.code),
              title: const Text('Flutter / Roll Dice'),
              onTap: () => _openPage(context, const DartCode()),
            ),
          ],
        ),
      ),

      appBar: AppBar(title: const Text('Meus Pequenos Projetos')),

      body: const Center(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Text(
            'Abra o menu lateral para acessar os meus projetinhos.',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 26),
          ),
        ),
      ),
    );
  }
}
