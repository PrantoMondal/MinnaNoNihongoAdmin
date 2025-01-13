import 'package:get/get.dart';
import 'package:monna_no_nihongo/src/modules/lessons/controllers/lesson_controller.dart';

class LessonBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LessonController>(
      () => LessonController(),
      fenix: true,
    );
  }
}
