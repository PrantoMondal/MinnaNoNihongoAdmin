import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:monna_no_nihongo/src/core/constants/app_colors.dart';
import 'package:monna_no_nihongo/src/modules/shared/base/base_view.dart';
import 'package:monna_no_nihongo/src/modules/shared/widgets/application_bar.dart';
import 'package:monna_no_nihongo/src/particles/controllers/particle_controller.dart';
import 'package:monna_no_nihongo/src/particles/data/particle.dart';
import 'package:monna_no_nihongo/src/particles/data/particles_data.dart';

class ParticleView extends BaseView<ParticleController> {
  @override
  PreferredSizeWidget? appBar(BuildContext context) {
    return ApplicationBar(
      leading: GestureDetector(
        onTap: () => Get.back(),
        child: const Icon(
          Icons.arrow_back_ios,
          color: AppColors.baseWhite,
        ),
      ),
      centerTitle: true,
      appTitleText: 'Particles',
    );
  }

  @override
  Widget body(BuildContext context) {
    ParticlesData particlesData = ParticlesData.fromJson(particleData);

    return Container(
      padding: const EdgeInsets.all(16),
      child: ListView.builder(
        itemCount: particlesData.particles.length,
        itemBuilder: (context, index) {
          Particle particle = particlesData.particles[index];
          return Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(8),
            ),
            margin: const EdgeInsets.only(bottom: 16),
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${particle.id}. ${particle.kana}( ${particle.particle} )',
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  particle.meaning,
                  style: const TextStyle(
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 8),
                const Text('Examples:'),
                ...List.generate(particle.examples.length ?? 0, (exampleIndex) {
                  final example = particle.examples[exampleIndex];
                  return Text('${example.sentence}\n${example.romaji}\n${example.meaning}\n',
                      style: const TextStyle(fontSize: 16));
                }),
              ],
            ),
          );
        },
      ),
    );
  }
}
