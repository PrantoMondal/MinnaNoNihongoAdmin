import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/preferred_size.dart';
import 'package:get/get.dart';
import 'package:monna_no_nihongo/src/core/constants/app_colors.dart';
import 'package:monna_no_nihongo/src/core/constants/app_values.dart';
import 'package:monna_no_nihongo/src/modules/shared/base/base_view.dart';
import 'package:monna_no_nihongo/src/modules/shared/widgets/application_bar.dart';
import 'package:monna_no_nihongo/src/modules/vocabulary/controllers/vocabulary_controller.dart';

class VocabularyDetailsView extends BaseView<VocabularyController> {
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
      appTitleText: 'arguments',
    );
  }

  @override
  Widget body(BuildContext context) {
    final arguments = Get.arguments;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppValues.gapSmall).copyWith(top: AppValues.gapXSmall),
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          logger.d(arguments);
          return Container(
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
                const SizedBox(height: 8),
                Text(
                  "lessons[index].title",
                  style: const TextStyle(
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
