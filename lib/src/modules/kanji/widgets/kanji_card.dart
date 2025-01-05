import 'package:flutter/material.dart';
import 'package:monna_no_nihongo/src/core/constants/app_colors.dart';

class KanjiCard extends StatelessWidget {
  final Widget child;

  KanjiCard({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: AppColors.primary.withOpacity(0.1),
        borderRadius: BorderRadius.circular(8),
      ),
      child: child,
    );
  }
}
