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
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemCount: kanji.keys.length,
      itemBuilder: (context, index) {
        String category = kanji.keys.toList()[index];
        return Container(
          margin: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Colors.blue.withOpacity(0.1),
            borderRadius: BorderRadius.circular(8),
          ),
          child: ListTile(
            onTap: () => controller.navigateToKanjiDetailScreen(category: category),
            title: Text('$category (${kanji[category]?.length})'),
          ),
        );
      },
    );
  }
}
