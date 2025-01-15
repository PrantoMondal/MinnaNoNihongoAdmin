import 'package:get/get.dart';
import 'package:monna_no_nihongo/src/modules/vocabulary/controllers/vocabulary_controller.dart';

class VocabularyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<VocabularyController>(
      () => VocabularyController(),
      fenix: true,
    );
  }
}
