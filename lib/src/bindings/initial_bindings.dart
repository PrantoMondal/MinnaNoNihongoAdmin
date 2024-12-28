import 'package:get/get.dart';
import 'package:monna_no_nihongo/src/core/local/preferences/preference_manager_impl.dart';

class InitialBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => PreferenceManagerImpl(),
      fenix: true,
    );

    // Get.lazyPut(
    //   () => AuthRemoteDatasourceImpl(),
    //   fenix: true,
    // );

    // Get.putAsync<AuthService>(
    //   () async => AuthService(
    //     prefManager: PreferenceManagerImpl.to,
    //     remoteDatasource: AuthRemoteDatasourceImpl.to,
    //   ).init(),
    //   permanent: true,
    // );
  }
}
