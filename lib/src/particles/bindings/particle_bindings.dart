import 'package:get/get.dart';
import 'package:monna_no_nihongo/src/particles/controllers/particle_controller.dart';

class ParticleBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ParticleController>(
      () => ParticleController(),
      fenix: true,
    );
  }
}
