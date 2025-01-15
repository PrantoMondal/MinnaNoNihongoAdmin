import 'package:flutter/material.dart';
import 'package:monna_no_nihongo/src/modules/dashboard/data/letters.dart';
import 'package:monna_no_nihongo/src/modules/shared/base/base_widget_mixin.dart';

class CustomGridView extends StatelessWidget with BaseWidgetMixin {
  final String args;
  final List<Letter> data;
  final int crossAxisCount;
  double? aspectRatio;

  CustomGridView({
    required this.crossAxisCount,
    required this.args,
    required this.data,
    this.aspectRatio,
  });

  @override
  Widget body(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        crossAxisSpacing: 2,
        mainAxisSpacing: 2,
        childAspectRatio: aspectRatio ?? 1.0,
      ),
      itemCount: data.length,
      itemBuilder: (context, index) {
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: Colors.green.withOpacity(0.3),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                args == 'hiragana' ? data[index].hiragana : data[index].katakana,
                style: TextStyle(
                  color: data[index].hiragana == "__" ? Colors.grey : Colors.black,
                  fontSize: 24,
                ),
              ),
              Text(
                data[index].romaji ?? '',
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
