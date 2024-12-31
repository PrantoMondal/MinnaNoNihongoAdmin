import 'package:get/get.dart';
import 'package:monna_no_nihongo/src/modules/kanji/controllers/kanji_controller.dart';

class KanjiBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<KanjiController>(
      () {
        return KanjiController();
      },
      fenix: true,
    );
  }
}
