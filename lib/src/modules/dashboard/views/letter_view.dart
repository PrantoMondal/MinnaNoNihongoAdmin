import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:monna_no_nihongo/src/core/constants/app_colors.dart';
import 'package:monna_no_nihongo/src/modules/dashboard/controllers/letter_controller.dart';
import 'package:monna_no_nihongo/src/modules/dashboard/data/letters.dart';
import 'package:monna_no_nihongo/src/modules/dashboard/widgets/custom_grid_view.dart';
import 'package:monna_no_nihongo/src/modules/shared/base/base_view.dart';
import 'package:monna_no_nihongo/src/modules/shared/widgets/application_bar.dart';
import 'package:monna_no_nihongo/src/modules/shared/widgets/section.dart';

class LetterView extends BaseView<LetterController> {
  @override
  PreferredSizeWidget? appBar(BuildContext context) {
    final arguments = Get.arguments;
    return ApplicationBar(
      leading: GestureDetector(
        onTap: () => Get.back(),
        child: const Icon(
          Icons.arrow_back_ios,
          color: AppColors.baseWhite,
        ),
      ),
      centerTitle: true,
      appTitleText: arguments.toString(),
    );
  }

  @override
  Widget body(BuildContext context) {
    final arguments = Get.arguments;
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0).copyWith(bottom: 16),
        child: Column(
          children: [
            const SizedBox(
              height: 16,
            ),
            Section(
              title: 'Gojūon',
              child: CustomGridView(
                crossAxisCount: 5,
                args: '${arguments.toLowerCase()}',
                data: letters,
              ),
            ),
            Section(
              title: 'Dakuon',
              child: CustomGridView(
                crossAxisCount: 5,
                args: '${arguments.toLowerCase()}',
                data: dakuonLetters,
              ),
            ),
            Section(
              title: 'Han-Dakuon',
              child: CustomGridView(
                crossAxisCount: 5,
                args: '${arguments.toLowerCase()}',
                data: handakuonLetters,
              ),
            ),
            Section(
              title: 'Youon',
              child: CustomGridView(
                crossAxisCount: 3,
                args: '${arguments.toLowerCase()}',
                data: yoonLetters,
                aspectRatio: 1.8,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
