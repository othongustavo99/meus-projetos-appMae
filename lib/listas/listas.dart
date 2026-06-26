import 'package:flutter/material.dart';

class ListScreen extends StatelessWidget {
  const ListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Lista JSON'), centerTitle: true),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Título
            const Text(
              'Perguntas e Respostas',
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 20),

            // Caixa do prompt
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(18),
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(15),
              ),
              child: const SelectableText('''{
  "questions": [
    {
      "question": "Quais são os principais blocos de construção das UIs do Flutter?",
      "answers": ["Widgets", "Componentes", "Blocos", "Funções"]
    },
    {
      "question": "Como as UIs do Flutter são construídas?",
      "answers": [
        "Combinando widgets no código",
        "Combinando widgets em um editor visual",
        "Definindo widgets em arquivos de configuração",
        "Usando Xcode para iOS e Android Studio para Android"
      ]
    },
    {
      "question": "Qual é o propósito de um StatefulWidget?",
      "answers": [
        "Atualizar a UI quando os dados mudam",
        "Atualizar os dados quando a UI muda",
        "Ignorar mudanças nos dados",
        "Renderizar UI que não depende de dados"
      ]
    },
    {
      "question": "Qual widget você deve tentar usar com mais frequência: StatelessWidget ou StatefulWidget?",
      "answers": [
        "StatelessWidget",
        "StatefulWidget",
        "Ambos são igualmente bons",
        "Nenhuma das alternativas"
      ]
    },
    {
      "question": "O que acontece se você alterar dados em um StatelessWidget?",
      "answers": [
        "A UI não é atualizada",
        "A UI é atualizada",
        "O StatefulWidget mais próximo é atualizado",
        "Quaisquer StatefulWidgets aninhados são atualizados"
      ]
    },
    {
      "question": "Como você deve atualizar dados dentro de StatefulWidgets?",
      "answers": [
        "Chamando setState()",
        "Chamando updateData()",
        "Chamando updateUI()",
        "Chamando updateState()"
      ]
    },
    {
      "question": "O que é o widget Tree no Flutter?",
      "answers": [
        "A estrutura hierárquica de widgets que compõe a interface",
        "Uma árvore de arquivos do projeto",
        "O sistema de renderização nativo",
        "Uma ferramenta de debug"
      ]
    },
    {
      "question": "Qual é a diferença principal entre StatelessWidget e StatefulWidget?",
      "answers": [
        "StatelessWidget não muda de estado, StatefulWidget pode mudar",
        "StatefulWidget é mais rápido que StatelessWidget",
        "StatelessWidget só pode ser usado em telas simples",
        "Não há diferença significativa entre eles"
      ]
    }
  ]
}
                      ''', style: TextStyle(fontSize: 16, height: 1.6)),
            ),

            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
