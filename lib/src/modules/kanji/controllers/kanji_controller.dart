import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:monna_no_nihongo/src/core/constants/app_colors.dart';
import 'package:monna_no_nihongo/src/core/routes/app_pages.dart';
import 'package:monna_no_nihongo/src/modules/shared/base/base_controller.dart';

class KanjiController extends BaseController with GetSingleTickerProviderStateMixin {
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onClose() {
    _animationController.value?.dispose();
    super.onClose();
  }

  initializeAnimationController() {
    _animationController.value = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );

    _colorAnimation.value = (ColorTween(begin: Colors.white, end: AppColors.primary)
        .chain(CurveTween(curve: Curves.ease))
        .animate(_animationController.value!)
      ..addListener(() {
        update();
      }));

    _animationController.value?.forward();
  }

  final Rxn<AnimationController> _animationController = Rxn<AnimationController>();
  AnimationController? get animationController => _animationController.value;

  final Rxn<Animation<Color?>> _colorAnimation = Rxn<Animation<Color?>>();
  Animation<Color?>? get colorAnimation => _colorAnimation.value;

  navigateToKanjiDetailScreen({required String category}) {
    logger.d(category);
    Get.toNamed(Routes.KANJI_DETAILS, arguments: category);
  }
}
