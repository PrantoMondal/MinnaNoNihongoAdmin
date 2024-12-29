import 'package:flutter/material.dart';

import '../../../core/constants/app_textstyles.dart';
import '../../../core/constants/app_values.dart';
import '../base/base_widget_mixin.dart';

class Section extends StatelessWidget with BaseWidgetMixin {
  Section({
    super.key,
    required this.title,
    required this.child,
    this.titleStyle = kSyne500W14S,
  });

  final String title;
  final TextStyle titleStyle;
  final Widget child;

  @override
  Widget body(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          title,
          style: titleStyle,
        ),
        const SizedBox(
          height: AppValues.gapSmall,
        ),
        child,
        const SizedBox(
          height: AppValues.gap,
        ),
      ],
    );
  }
}
