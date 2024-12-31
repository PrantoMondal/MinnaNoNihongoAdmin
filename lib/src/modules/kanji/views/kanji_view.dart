import 'package:flutter/material.dart';
import 'package:monna_no_nihongo/src/modules/kanji/controllers/kanji_controller.dart';
import 'package:monna_no_nihongo/src/modules/kanji/data/kanji_data.dart';
import 'package:monna_no_nihongo/src/modules/shared/base/base_view.dart';

class KanjiView extends BaseView<KanjiController> {
  @override
  PreferredSizeWidget? appBar(BuildContext context) {
    return AppBar(
      title: const Text('Kanji'),
    );
  }

  @override
  Widget body(BuildContext context) {
    return ListView.builder(
      itemCount: kanji.length,
      itemBuilder: (context, index) {
        String category = kanji.keys.toList()[index];
        return ListTile(
          onTap: () => controller.navigateToKanjiDetailScreen(category: category),
          title: Text(category),
        );
      },
    );
  }
}
