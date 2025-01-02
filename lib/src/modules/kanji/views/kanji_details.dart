import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:monna_no_nihongo/src/modules/kanji/controllers/kanji_controller.dart';
import 'package:monna_no_nihongo/src/modules/kanji/data/kanji_data.dart';
import 'package:monna_no_nihongo/src/modules/shared/base/base_view.dart';

class KanjiDetails extends BaseView<KanjiController> {
  @override
  PreferredSizeWidget? appBar(BuildContext context) {
    return AppBar(
      title: const Text('Kanji Details'),
    );
  }

  @override
  Widget body(BuildContext context) {
    controller.initializeAnimationController();
    final arguments = Get.arguments;
    return ListView.builder(
      itemCount: kanji[arguments]?.length ?? 0,
      itemBuilder: (context, index) {
        final data = kanji[arguments]?[index] as Map<String, dynamic>;

        return AnimatedBuilder(
          animation: controller.animationController!,
          builder: (context, child) {
            return Container(
              margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '${data['kanji']}',
                      style: TextStyle(
                        fontSize: 48,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Meaning: ${data['meaning']}'),
                        Text('Onyomi: ${data['onyomi']} (${data['onyomiRomaji']})'),
                        Text('Kunyomi: ${data['kunyomi']} (${data['kunyomiRomaji']})'),
                        const SizedBox(height: 10),
                        const Text('Examples:'),
                        ...List.generate(data['examples']?.length ?? 0, (exampleIndex) {
                          final example = data['examples'][exampleIndex] as Map<String, String>;
                          return Text('${example['vocabulary']}(${example['romaji']})  :  ${example['meaning']}');
                        }),
                      ],
                    )
                  ],
                ),
              ),
            );
          },
          // margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          // child: Padding(
          //   padding: const EdgeInsets.all(15),
          //   child: Row(
          //     mainAxisAlignment: MainAxisAlignment.start,
          //     crossAxisAlignment: CrossAxisAlignment.start,
          //     children: [
          //       Text(
          //         '${data['kanji']}',
          //         style: const TextStyle(fontSize: 48, fontWeight: FontWeight.w500),
          //       ),
          //       const SizedBox(width: 10),
          //       Column(
          //         crossAxisAlignment: CrossAxisAlignment.start,
          //         children: [
          //           Text('Meaning: ${data['meaning']}'),
          //           Text('Onyomi: ${data['onyomi']} (${data['onyomiRomaji']})'),
          //           Text('Kunyomi: ${data['kunyomi']} (${data['kunyomiRomaji']})'),
          //           const SizedBox(height: 10),
          //           const Text('Examples:'),
          //           ...List.generate(data['examples']?.length ?? 0, (exampleIndex) {
          //             final example = data['examples'][exampleIndex] as Map<String, String>;
          //             return Text('${example['vocabulary']}(${example['romaji']})  :  ${example['meaning']}');
          //           }),
          //         ],
          //       )
          //     ],
          //   ),
          // ),
        );
      },
    );
  }
}
