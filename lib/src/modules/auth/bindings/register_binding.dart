import 'package:get/get.dart';
import 'package:monna_no_nihongo/src/modules/auth/controllers/register_controller.dart';

class RegisterBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RegisterController>(
      () => RegisterController(),
      fenix: true,
    );
  }
}
