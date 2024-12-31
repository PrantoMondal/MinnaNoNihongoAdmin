import 'package:get/get.dart';
import 'package:monna_no_nihongo/src/modules/dashboard/controllers/letter_controller.dart';

class LetterBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LetterController>(
      () => LetterController(),
      fenix: true,
    );
  }
}
