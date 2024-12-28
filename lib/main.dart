import 'package:flutter/material.dart';
import 'package:monna_no_nihongo/src/application.dart';
import 'package:monna_no_nihongo/src/core/config/build_config.dart';
import 'package:monna_no_nihongo/src/core/config/env_config.dart';
import 'package:package_info_plus/package_info_plus.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  PackageInfo packageInfo = await PackageInfo.fromPlatform();
  final envConfig = EnvConfig(
    appName: packageInfo.appName,
    appVersion: packageInfo.version,
    packageName: packageInfo.packageName,
    baseUrl: "",
  );

  BuildConfig.instantiate(
    config: envConfig,
  );

  runApp(const Application());
}
