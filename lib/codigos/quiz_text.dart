import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart'; // Se ainda não tiver importado

class QuizText extends StatelessWidget {
  const QuizText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Primeira caixa
        _buildCodeBox(
          title: 'quiz.dart', // ou o nome que preferir
          text: '''class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswers = [];
  Widget? activeScreen;

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);

    if (selectedAnswers.length == questions.length) {
      setState(() {
        activeScreen = ResultScreen(
          chosenAnswers: selectedAnswers,
          onRestart: restartQuiz,
        );
      });
    }
  }

  void restartQuiz() {
    setState(() {
      selectedAnswers = [];
      activeScreen = StartScreen(switchScreen);
    });
  }

  void switchScreen() {
    setState(() {
      activeScreen = QuestionsScreen(onSelectedAnswer: chooseAnswer);
    });
  }

  @override
  void initState() {
    activeScreen = StartScreen(switchScreen);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: const Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(width: 8),
              Text(
                'Flutter Quiz',
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
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 103, 58, 183),
                Color.fromARGB(255, 81, 45, 168),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: activeScreen!,
        ),
      ),
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
              'start_screen.dart',
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
          text: '''class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 280,
            color: const Color.fromARGB(160, 255, 255, 255),
          ),
          const SizedBox(height: 80),
          Text(
            'Teste seu conhecimento em Flutter.',
            style: GoogleFonts.lato(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 40),
          OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
              side: const BorderSide(color: Colors.white, width: 2),
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 14),
            ),
            icon: const Icon(Icons.arrow_right_alt),
            label: const Text('Iniciar Quizz', style: TextStyle(fontSize: 18)),
          ),
        ],
      ),
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
              'questions_screen.dart',
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
          text: '''class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key, required this.onSelectedAnswer});

  final void Function(String answer) onSelectedAnswer;

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var currentQuestionIndex = 0;

  void answerQuestion(String selectedAnswer) {
    widget.onSelectedAnswer(selectedAnswer);
    setState(() {
      currentQuestionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[currentQuestionIndex];

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.text,
              style: GoogleFonts.lato(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            ...currentQuestion.getShuffledAnswers().map((answer) {
              return AnswerButton(
                answerText: answer,
                onTap: () => answerQuestion(answer),
              );
            }),
          ],
        ),
      ),
    );
  }
}
''',
        ),
        const SizedBox(height: 30),

        const SizedBox(height: 12),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'start_screen.dart',
              style: GoogleFonts.lato(
                color: Colors.black,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        const SizedBox(height: 12),

        _buildCodeBox(
          text: '''class ResultScreen extends StatelessWidget {
  const ResultScreen({
    super.key,
    required this.chosenAnswers,
    required this.onRestart,
  });

  final List<String> chosenAnswers;
  final VoidCallback onRestart;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];
    for (var i = 0; i < chosenAnswers.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].text,
        'correct_answer': questions[i].answers[0],
        'user_answer': chosenAnswers[i],
      });
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummaryData();
    final numTotal = questions.length;
    final numCorrect = summaryData
        .where((d) => d['user_answer'] == d['correct_answer'])
        .length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Você respondeu ... de ... perguntas corretamente!',
              style: GoogleFonts.lato(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            QuestionsSummary(summaryData),
            const SizedBox(height: 40),
            TextButton.icon(
              onPressed: onRestart,
              icon: const Icon(Icons.refresh, color: Colors.white),
              label: const Text(
                'Reiniciar Quiz',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              style: TextButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                  horizontal: 40,
                  vertical: 14,
                ),
                backgroundColor: const Color.fromARGB(255, 90, 6, 105),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
''',
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'questions.dart',
              style: GoogleFonts.lato(
                color: Colors.black,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        const SizedBox(height: 12),

        _buildCodeBox(
          text: '''const questions = [
  QuizQuestions(
    'Quais são os principais blocos de construção das UIs do Flutter?',
    ['Widgets', 'Componentes', 'Blocos', 'Funções'],
  ),
  QuizQuestions('Como as UIs do Flutter são construídas?', [
    'Combinando widgets no código',
    'Combinando widgets em um editor visual',
    'Definindo widgets em arquivos de configuração',
    'Usando Xcode para iOS e Android Studio para Android',
  ]),
  QuizQuestions('Qual é o propósito de um StatefulWidget?', [
    'Atualizar a UI quando os dados mudam',
    'Atualizar os dados quando a UI muda',
    'Ignorar mudanças nos dados',
    'Renderizar UI que não depende de dados',
  ]),
  QuizQuestions(
    'Qual widget você deve tentar usar com mais frequência: StatelessWidget ou StatefulWidget?',
    [
      'StatelessWidget',
      'StatefulWidget',
      'Ambos são igualmente bons',
      'Nenhuma das alternativas',
    ],
  ),
  QuizQuestions('O que acontece se você alterar dados em um StatelessWidget?', [
    'A UI não é atualizada',
    'A UI é atualizada',
    'O StatefulWidget mais próximo é atualizado',
    'Quaisquer StatefulWidgets aninhados são atualizados',
  ]),
  QuizQuestions('Como você deve atualizar dados dentro de StatefulWidgets?', [
    'Chamando setState()',
    'Chamando updateData()',
    'Chamando updateUI()',
    'Chamando updateState()',
  ]),
];
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
