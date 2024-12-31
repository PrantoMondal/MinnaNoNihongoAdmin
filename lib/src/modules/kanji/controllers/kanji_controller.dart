import 'package:get/get.dart';
import 'package:monna_no_nihongo/src/core/routes/app_pages.dart';
import 'package:monna_no_nihongo/src/modules/shared/base/base_controller.dart';

class KanjiController extends BaseController {
  @override
  void onInit() {
    super.onInit();
  }

  navigateToKanjiDetailScreen({required String category}) {
    logger.d(category);
    Get.toNamed(Routes.KANJI_DETAILS, arguments: category);
  }
}
