import 'package:get/get.dart';
import 'package:monna_no_nihongo/src/modules/shared/base/base_controller.dart';

class LetterController extends BaseController {
  var arguments;
  @override
  void onInit() {
    arguments = Get.arguments;
    super.onInit();
  }
}
