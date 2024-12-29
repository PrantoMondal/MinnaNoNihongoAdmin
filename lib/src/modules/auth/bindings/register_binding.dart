import 'package:get/get.dart';
import 'package:monna_no_nihongo/src/core/data/provider/appwrite_provider.dart';
import 'package:monna_no_nihongo/src/core/data/repository/auth_repository.dart';
import 'package:monna_no_nihongo/src/modules/auth/controllers/register_controller.dart';

class RegisterBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RegisterController>(
      () => RegisterController(
        AuthRepository(
          AppwriteProvider(),
        ),
      ),
      fenix: true,
    );
  }
}
