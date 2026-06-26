import 'package:flutter/material.dart';

class PhotoText extends StatelessWidget {
  const PhotoText({super.key});

  @override
  Widget build(BuildContext context) {
    return const SelectableText(
      '''Enhance the uploaded image to the highest possible professional quality while preserving every original detail, identity, composition, colors, proportions, and overall scene.

Apply advanced AI restoration and enhancement techniques without altering the content of the image.

Improvements should include:
• Significantly increase overall resolution and sharpness.
• Restore fine textures and micro-details naturally.
• Remove compression artifacts, digital noise, grain, banding, and pixelation.
• Correct focus while maintaining a realistic appearance.
• Improve dynamic range and tonal balance.
• Enhance natural lighting without creating artificial effects.
• Optimize exposure, highlights, shadows, and contrast.
• Improve white balance and color accuracy.
• Increase color depth while preserving realistic tones.
• Preserve skin texture and natural facial features if people are present.
• Restore damaged or low-quality areas seamlessly.
• Eliminate blur caused by low-quality compression whenever possible.
• Produce clean, crisp edges without halos or oversharpening.
• Maintain physically accurate materials, reflections, and textures.
• Preserve the original framing, perspective, and aspect ratio.
• Do not crop, remove, replace, invent, or hallucinate any objects, people, or scene elements.
• Do not apply artistic filters, stylization, beauty filters, cartoon effects, HDR exaggeration, or unrealistic enhancements.

The final result must look as if the original image had been captured using a modern professional full-frame camera with premium optics under ideal photographic conditions, while remaining completely faithful to the original photograph.

Output an ultra-photorealistic, high-resolution, clean, natural, professional-quality image.''',
      style: TextStyle(fontSize: 16, height: 1.5),
    );
  }
}
