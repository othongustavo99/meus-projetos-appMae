import 'package:flutter/material.dart';
import 'prompt_rose_text.dart';

class PromptRose extends StatelessWidget {
  const PromptRose({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Prompt para criar uma rosa'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Título
            const Text(
              'Prompt Rosa 🌹',
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
              child: RoseText(),
            ),

            const SizedBox(height: 30),

            const Text(
              'Resultado',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 15),

            Container(
              width: double.infinity,
              height: 250,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
              ),
              clipBehavior: Clip
                  .antiAlias, // Faz a imagem respeitar as bordas arredondadas
              child: Image.asset('assets/images/Rose.png', fit: BoxFit.cover),
            ),

            const SizedBox(height: 25),

            const Text('''
Esta imagem foi gerada utilizando o **ChatGPT (GPT-5.5)**. No entanto, a qualidade do resultado pode variar de acordo com a ferramenta de IA utilizada, seja um **LLM (Large Language Model)** ou um **SLM (Small Language Model)**.

Modelos especializados na geração de imagens realistas podem produzir resultados semelhantes ou até superiores.

Além disso, a qualidade final também depende do prompt utilizado. O prompt apresentado nesta tela serve apenas como um exemplo e uma base para que você possa criar e adaptar os seus próprios prompts conforme a sua necessidade.

''', style: TextStyle(fontSize: 16, height: 1.6)),
          ],
        ),
      ),
    );
  }
}
