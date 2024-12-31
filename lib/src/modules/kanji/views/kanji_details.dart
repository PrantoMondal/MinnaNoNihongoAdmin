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
    final arguments = Get.arguments;
    return ListView.builder(
      itemCount: kanji[arguments]?.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: Text(
            "${kanji[arguments]?[index]['kanji'] ?? ''}",
          ),
          leadingAndTrailingTextStyle: TextStyle(fontSize: 30, color: Colors.black),
          subtitle: Text("${kanji[arguments]?[index]['romaji'] ?? ''}"),
          title: Text("${kanji[arguments]?[index]['hiragana'] ?? ''}"),
          trailing: Text(
            "${kanji[arguments]?[index]['meaning'] ?? ''}",
            style: TextStyle(fontSize: 14),
          ),
        );
      },
    );
  }
}
