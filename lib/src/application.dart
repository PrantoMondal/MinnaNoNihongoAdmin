import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'bindings/initial_bindings.dart';
import 'core/config/build_config.dart';
import 'core/routes/app_pages.dart';

class Application extends StatelessWidget {
  const Application({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // SystemChrome.setPreferredOrientations([
    //   DeviceOrientation.portraitUp,
    //   DeviceOrientation.portraitDown,
    // ]);
    final config = BuildConfig.instance.envConfig;

    return GetMaterialApp(
      title: config.appName,
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      initialBinding: InitialBindings(),
      // localizationsDelegates: AppLocalizations.localizationsDelegates,
      // supportedLocales: L10n.locals,
      locale: Get.locale,
      debugShowCheckedModeBanner: false,
    );
  }
}
