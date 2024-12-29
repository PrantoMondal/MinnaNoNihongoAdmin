import 'package:flutter/material.dart';
import 'package:monna_no_nihongo/src/modules/shared/base/base_widget_mixin.dart';
import 'package:monna_no_nihongo/src/modules/shared/widgets/ripple.dart';

class CustomCard extends StatelessWidget with BaseWidgetMixin {
  final String title;
  String? subtitle;
  final Color backgroundColor;
  final Function()? onTap;

  CustomCard({
    super.key,
    required this.title,
    this.subtitle,
    this.backgroundColor = Colors.white,
    this.onTap,
  });

  @override
  Widget body(BuildContext context) {
    return Ripple(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 2,
              blurRadius: 5,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: SizedBox(
          height: 100,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                subtitle == null
                    ? SizedBox()
                    : Text(
                        subtitle!,
                        style: TextStyle(fontSize: 16, color: Colors.grey[700]),
                      ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
