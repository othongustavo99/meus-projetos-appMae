import 'package:flutter/material.dart';

class PromptScreen extends StatelessWidget {
  const PromptScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Prompt para criar o Planeta Terra'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Título
            const Text(
              'Prompt Terra 🌍',
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
              child: const SelectableText('''
Create an ultra-photorealistic, scientifically accurate image of Planet Earth viewed from space, captured from a distant low Earth orbit (LEO) using a professional ultra-wide-angle full-frame camera system.

The entire planetary disk must be completely visible within the frame, perfectly centered and fully contained without cropping. Earth should occupy approximately 65–80% of the composition while preserving the complete spherical silhouette and natural proportions.

Render the planet with physically accurate planetary features, including:
• Realistic continental landmasses with correct geographic proportions
• Deep blue oceans with natural color variation
• Polar ice caps
• Highly detailed multi-layer cloud systems
• Accurate large-scale weather formations
• Natural atmospheric limb with subtle Rayleigh scattering
• Smooth atmospheric gradient transitioning into the vacuum of space

Lighting must be physically correct:
• Single natural sunlight source
• Soft daylight illumination
• Realistic solar incidence angle
• Accurate shadows within cloud systems
• Natural specular reflections over oceans
• No exaggerated HDR
• No bloom or artificial glow

The surrounding space must appear as true deep space:
• Pure black background
• Thousands of small, naturally distributed stars with realistic brightness variation
• Extremely subtle Milky Way visible only as a faint distant galactic band
• No oversized stars
• No fantasy nebulae
• No colorful cosmic clouds
• No lens flares

The image should resemble a genuine orbital photograph captured by modern NASA or ESA imaging systems rather than computer-generated artwork.

Image characteristics:
• Ultra-photorealistic
• Scientific realism
• Physically based rendering (PBR)
• Natural color science
• High dynamic range without oversaturation
• Perfect white balance
• Exceptional micro-detail
• Subtle photographic film grain
• Clean optics
• Razor-sharp focus across the entire frame

Composition:
• Cinematic yet documentary
• National Geographic editorial photography style
• Calm and majestic atmosphere
• Symmetrical composition
• Entire globe fully visible
• No spacecraft
• No satellites
• No astronauts
• No text
• No logos
• No artificial visual effects
• No CGI appearance
• No AI artifacts

Target quality:
Ultra-high-resolution 8K, museum-quality, indistinguishable from a real orbital photograph of Earth captured with state-of-the-art space imaging technology.
                ''', style: TextStyle(fontSize: 16, height: 1.6)),
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
                borderRadius: BorderRadius.circular(15),
              ),
              clipBehavior: Clip
                  .antiAlias, // Faz a imagem respeitar as bordas arredondadas
              child: Image.asset('assets/images/earth.png', fit: BoxFit.cover),
            ),

            const SizedBox(height: 30),

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
