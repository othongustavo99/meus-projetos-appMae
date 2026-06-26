import 'package:meus_projetos/quiz/models/quiz_questions.dart';

const questions = [
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
