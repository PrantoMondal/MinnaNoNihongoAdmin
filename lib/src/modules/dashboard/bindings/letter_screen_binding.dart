import 'package:get/get.dart';
import 'package:monna_no_nihongo/src/modules/dashboard/controllers/letter_screen_controller.dart';

class LetterScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LetterScreenController>(
      () => LetterScreenController(),
      fenix: true,
    );
  }
}
