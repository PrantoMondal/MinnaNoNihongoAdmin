import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:monna_no_nihongo/src/modules/dashboard/controllers/letter_screen_controller.dart';
import 'package:monna_no_nihongo/src/modules/dashboard/data/letters.dart';
import 'package:monna_no_nihongo/src/modules/shared/base/base_view.dart';

class LetterScreenView extends BaseView<LetterScreenController> {
  @override
  PreferredSizeWidget? appBar(BuildContext context) {
    return AppBar(
      title: Text(controller.arguments.toString()),
    );
  }

  @override
  Widget body(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(16),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 5,
        crossAxisSpacing: 2,
        mainAxisSpacing: 2,
      ),
      itemCount: letters.length,
      itemBuilder: (context, index) {
        return Container(
          decoration: BoxDecoration(
            // color: Colors.blue,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: Colors.green.withOpacity(0.3),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                letters[index]['${controller.arguments.toLowerCase()}']!,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                ),
              ),
              Text(
                letters[index]['romaji']!,
                style: const TextStyle(
                  color: Colors.black,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
