import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:monna_no_nihongo/src/core/constants/app_colors.dart';
import 'package:monna_no_nihongo/src/core/constants/app_values.dart';
import 'package:monna_no_nihongo/src/modules/lessons/data/lesson_list_data.dart';
import 'package:monna_no_nihongo/src/modules/shared/base/base_view.dart';
import 'package:monna_no_nihongo/src/modules/shared/widgets/application_bar.dart';
import 'package:monna_no_nihongo/src/modules/shared/widgets/ripple.dart';
import 'package:monna_no_nihongo/src/modules/vocabulary/controllers/vocabulary_controller.dart';

class VocabularyView extends BaseView<VocabularyController> {
  @override
  PreferredSizeWidget? appBar(BuildContext context) {
    return ApplicationBar(
      leading: GestureDetector(
        onTap: () => Get.back(),
        child: const Icon(
          Icons.arrow_back_ios,
          color: AppColors.baseWhite,
        ),
      ),
      centerTitle: true,
      appTitleText: 'Vocabulary',
    );
  }

  @override
  Widget body(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppValues.gapSmall).copyWith(top: AppValues.gapXSmall),
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Ripple(
            onTap: () {
              controller.navigateToVocabularyDetails(arguments: 'lesson$index');
            },
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(8),
              ),
              margin: const EdgeInsets.only(bottom: AppValues.gapXSmall),
              padding: const EdgeInsets.all(AppValues.gapXSmall),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Lesson ${index + 1}',
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
