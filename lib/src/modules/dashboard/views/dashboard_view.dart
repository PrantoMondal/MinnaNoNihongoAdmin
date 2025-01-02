import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:monna_no_nihongo/src/modules/dashboard/controllers/dashboard_controller.dart';
import 'package:monna_no_nihongo/src/modules/dashboard/widgets/custom_card.dart';
import 'package:monna_no_nihongo/src/modules/shared/base/base_view.dart';
import 'package:monna_no_nihongo/src/modules/shared/widgets/section.dart';

class DashboardView extends BaseView<DashboardController> {
  @override
  PreferredSizeWidget? appBar(BuildContext context) {
    return AppBar(
      title: const Text('Dashboard'),
      actions: [
        IconButton(
          onPressed: () {
            controller.logOut();
          },
          icon: const Icon(Icons.logout),
        ),
      ],
    );
  }

  @override
  Widget body(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Section(
            title: 'Letters',
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: CustomCard(
                    title: 'あ',
                    subtitle: 'Hiragana',
                    onTap: () => controller.navigateToLetterScreen(letterId: 'Hiragana'),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                    child: CustomCard(
                  title: 'ア',
                  subtitle: 'Katakana',
                  onTap: () => controller.navigateToLetterScreen(letterId: 'Katakana'),
                )),
              ],
            ),
          ),
          Section(
            title: 'Kanji',
            child: CustomCard(
              title: '漢 字',
              onTap: () => controller.navigateToKanjiScreen(),
            ),
          ),
          Section(
            title: 'Vocabulary',
            child: CustomCard(
              title: 'Lesson 1 - 25',
              onTap: () => controller.navigateToKanjiScreen(),
            ),
          ),
        ],
      ),
    );
  }
}
