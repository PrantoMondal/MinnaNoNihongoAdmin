import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:monna_no_nihongo/src/core/routes/app_pages.dart';
import 'package:monna_no_nihongo/src/modules/shared/base/base_controller.dart';

class KanjiController extends BaseController with GetSingleTickerProviderStateMixin {
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onClose() {
    super.onClose();
  }

  var isAnimation = false.obs;

  initialize() {
    isAnimation.value = false;
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      isAnimation.value = true;
    });
  }

  navigateToKanjiDetailScreen({required String category}) {
    logger.d(category);
    Get.toNamed(Routes.KANJI_DETAILS, arguments: category);
  }
}
