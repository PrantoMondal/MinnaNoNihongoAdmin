import 'package:get/get.dart';
import 'package:monna_no_nihongo/src/core/data/provider/appwrite_provider.dart';
import 'package:monna_no_nihongo/src/core/data/repository/auth_repository.dart';
import 'package:monna_no_nihongo/src/core/local/preferences/preference_manager_impl.dart';
import 'package:monna_no_nihongo/src/modules/dashboard/controllers/dashboard_controller.dart';

class DashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DashboardController>(
      () => DashboardController(
        AuthRepository(
          AppwriteProvider(),
        ),
        PreferenceManagerImpl.to,
      ),
      fenix: true,
    );
  }
}
