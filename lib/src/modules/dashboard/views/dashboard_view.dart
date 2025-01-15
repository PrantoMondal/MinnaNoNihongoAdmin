import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:monna_no_nihongo/src/core/constants/app_colors.dart';
import 'package:monna_no_nihongo/src/core/constants/app_textstyles.dart';
import 'package:monna_no_nihongo/src/modules/dashboard/controllers/dashboard_controller.dart';
import 'package:monna_no_nihongo/src/modules/dashboard/widgets/custom_card.dart';
import 'package:monna_no_nihongo/src/modules/shared/base/base_view.dart';
import 'package:monna_no_nihongo/src/modules/shared/widgets/application_bar.dart';
import 'package:monna_no_nihongo/src/modules/shared/widgets/section.dart';

class DashboardView extends BaseView<DashboardController> {
  @override
  PreferredSizeWidget? appBar(BuildContext context) {
    return ApplicationBar(
      appTitleText: 'Dashboard',
      centerTitle: true,
      actions: [
        IconButton(
          icon: const Icon(Icons.logout),
          onPressed: () {
            controller.logOut();
          },
        ),
      ],
    );
  }

  @override
  Widget body(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Good Morning!",
              style: roboto500W20S.copyWith(color: AppColors.primary, fontWeight: FontWeight.w800, fontSize: 24),
            ),
            Text(
              "What would you like to learn today?",
              style: roboto500W20S.copyWith(color: AppColors.primary),
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: CustomCard(
                    title: 'あ',
                    subtitle: 'Hiragana',
                    backgroundColor: AppColors.slate400,
                    onTap: () => controller.navigateToLetterScreen(letterId: 'Hiragana'),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: CustomCard(
                    title: 'ア',
                    subtitle: 'Katakana',
                    backgroundColor: AppColors.slate400,
                    onTap: () => controller.navigateToLetterScreen(letterId: 'Katakana'),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    CustomCard(
                      backgroundColor: AppColors.primaryLighter,
                      height: 150,
                      width: 150,
                      title: '漢 字',
                      onTap: controller.navigateToKanjiScreen,
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    CustomCard(
                      height: 150,
                      width: 150,
                      backgroundColor: AppColors.secondaryLighter,
                      title: 'Particles',
                      onTap: controller.navigateToParticleScreen,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
                const SizedBox(
                  width: 16,
                ),
                Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    CustomCard(
                      height: 150,
                      width: 150,
                      backgroundColor: AppColors.secondaryLighter,
                      title: 'Vocabulary',
                      onTap: controller.navigateToLessonScreen,
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    CustomCard(
                      height: 150,
                      width: 150,
                      backgroundColor: AppColors.primaryLighter,
                      title: 'Lessons',
                      onTap: controller.navigateToLessonScreen,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
