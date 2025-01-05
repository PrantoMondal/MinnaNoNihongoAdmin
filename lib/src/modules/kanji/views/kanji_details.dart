import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:monna_no_nihongo/src/core/constants/app_values.dart';
import 'package:monna_no_nihongo/src/core/constants/screen_size.dart';
import 'package:monna_no_nihongo/src/modules/kanji/controllers/kanji_controller.dart';
import 'package:monna_no_nihongo/src/modules/kanji/data/kanji_data.dart';
import 'package:monna_no_nihongo/src/modules/kanji/widgets/kanji_card.dart';
import 'package:monna_no_nihongo/src/modules/shared/base/base_view.dart';
import 'package:monna_no_nihongo/src/modules/shared/widgets/application_bar.dart';

class KanjiDetails extends BaseView<KanjiController> {
  KanjiDetails() {
    controller.initialize();
  }

  @override
  PreferredSizeWidget? appBar(BuildContext context) {
    final arguments = Get.arguments;
    return ApplicationBar(
      leading: IconButton(
        icon: const Icon(Icons.arrow_back),
        onPressed: () => Get.back(),
      ),
      titleWidget: Text(arguments),
    );
  }

  @override
  Widget body(BuildContext context) {
    final arguments = Get.arguments;
    return ListView.builder(
      itemCount: kanji[arguments]?.length ?? 0,
      itemBuilder: (context, index) {
        final data = kanji[arguments]?[index] as Map<String, dynamic>;
        return Obx(
          () => AnimatedContainer(
            margin: const EdgeInsets.symmetric(horizontal: 10).copyWith(bottom: 10),
            duration: Duration(milliseconds: 300 + index * 200),
            curve: Curves.fastOutSlowIn,
            transform: Matrix4.translationValues(controller.isAnimation.value ? 0 : screenWidth(context, 1), 0, 0),
            child: KanjiCard(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: AppValues.space,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '${data['kanji']}',
                          style: const TextStyle(
                            fontSize: 48,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text('${data['meaning']}'),
                      ],
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        data['onyomi'] != ''
                            ? Text(
                                'Onyomi: ${data['onyomi']} [ ${data['onyomiRomaji']} ]',
                              )
                            : const SizedBox(),
                        data['kunyomi'] != ''
                            ? Text(
                                'Kunyomi: ${data['kunyomi']} [ ${data['kunyomiRomaji']} ]',
                              )
                            : const SizedBox(),
                        const SizedBox(height: AppValues.gapXSmall),
                        const Text('Examples:'),
                        ...List.generate(data['examples']?.length ?? 0, (exampleIndex) {
                          final example = data['examples'][exampleIndex] as Map<String, String>;
                          return Text('${example['vocabulary']} [ ${example['romaji']} ]  :  ${example['meaning']}');
                        }),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
