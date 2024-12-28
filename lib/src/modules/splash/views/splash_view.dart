import 'package:flutter/material.dart';
import 'package:monna_no_nihongo/src/core/constants/app_colors.dart';
import 'package:monna_no_nihongo/src/modules/shared/base/base_view.dart';
import 'package:monna_no_nihongo/src/modules/splash/controllers/splash_controller.dart';

class SplashView extends BaseView<SplashController> {
  SplashView();

  @override
  PreferredSizeWidget? appBar(BuildContext context) {
    return null;
  }

  @override
  Widget body(BuildContext context) {
    return Container(
        // color: AppColors.primary,
        // height: double.infinity,
        // width: double.infinity,
        );
  }

  @override
  Color pageBackgroundColor() {
    return AppColors.primary;
  }

  @override
  Color statusBarColor() {
    return AppColors.primary;
  }
}
