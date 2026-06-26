import 'package:flutter/material.dart';
import 'package:meus_projetos/prompts/prompt_photo_text.dart';

class PromptPhoto extends StatelessWidget {
  const PromptPhoto({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Prompt para melhorar uma foto'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Título
            const Text(
              'Prompt Foto Melhorada 🖼️',
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
              child: PhotoText(),
            ),

            const SizedBox(height: 30),

            const Text(
              'Resultado',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 15),

            // ===== ANTES E DEPOIS =====
            const SizedBox(height: 20),

            Row(
              children: [
                // Imagem ANTES
                Expanded(
                  child: Column(
                    children: [
                      const Text(
                        'Antes',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 8),
                      Container(
                        height: 250,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: Colors.grey.shade300),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.asset(
                            'assets/images/foto_antes.jpeg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(width: 12), // Espaço entre as imagens
                // Imagem DEPOIS
                Expanded(
                  child: Column(
                    children: [
                      const Text(
                        'Depois',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Container(
                        height: 250,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: Colors.blue.shade300),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.asset(
                            'assets/images/foto_depois.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            const SizedBox(height: 30),

            const SizedBox(height: 30),

            const Text('''
Esta melhoria foi feita usando  o **Gemini 3.5 Flash,**. No entanto, a qualidade do resultado pode variar de acordo com a ferramenta de IA utilizada, seja um **LLM (Large Language Model)** ou um **SLM (Small Language Model)**.

Modelos especializados na geração de imagens realistas podem produzir resultados semelhantes ou até superiores.

Além disso, a qualidade final também depende do prompt utilizado. O prompt apresentado nesta tela serve apenas como um exemplo e uma base para que você possa criar e adaptar os seus próprios prompts conforme a sua necessidade.

''', style: TextStyle(fontSize: 16, height: 1.6)),

            const Text(
              'Outro Exemplo.',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 30),
            Row(
              children: [
                // Imagem ANTES
                Expanded(
                  child: Column(
                    children: [
                      const Text(
                        'Antes',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 8),
                      Container(
                        height: 250,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: Colors.grey.shade300),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.asset(
                            'assets/images/dog_antes.jpeg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(width: 12), // Espaço entre as imagens
                // Imagem DEPOIS
                Expanded(
                  child: Column(
                    children: [
                      const Text(
                        'Depois',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Container(
                        height: 250,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: Colors.blue.shade300),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.asset(
                            'assets/images/dog_depous.jpeg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            const Text(
              '''Esta melhoria foi feita usando  o **Muse Spark - Meta AI,**. No entanto, a qualidade do resultado pode variar de acordo com a ferramenta de IA utilizada, seja um **LLM (Large Language Model)** ou um **SLM (Small Language Model)**.

Modelos especializados na geração de imagens realistas podem produzir resultados semelhantes ou até superiores.

Além disso, a qualidade final também depende do prompt utilizado. O prompt apresentado nesta tela serve apenas como um exemplo e uma base para que você possa criar e adaptar os seus próprios prompts conforme a sua necessidade.

''',
              style: TextStyle(fontSize: 16, height: 1.6),
            ),
          ],
        ),
      ),
    );
  }
}
