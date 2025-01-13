import 'package:flutter/material.dart';

import '../../../core/constants/app_colors.dart';
import '../../../core/constants/app_textstyles.dart';
import '../../../core/constants/app_values.dart';

class ApplicationBar extends StatelessWidget implements PreferredSizeWidget {
  const ApplicationBar({
    super.key,
    this.leading,
    this.appTitleText,
    this.actions,
    this.bgColor = AppColors.primary,
    // this.iconThemeData = kAppBarIconTheme,
    this.centerTitle = false,
    this.iconThemeData,
    this.titleTextStyle = roboto500W20S,
  });

  final Widget? leading;
  final String? appTitleText;
  final List<Widget>? actions;
  final Color bgColor;
  final TextStyle titleTextStyle;
  final IconThemeData? iconThemeData;
  final bool centerTitle;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: centerTitle,
      backgroundColor: bgColor,
      leading: leading,
      surfaceTintColor: bgColor,
      elevation: AppValues.elevationLvl1,
      iconTheme: iconThemeData,
      title: Text(
        appTitleText!,
        style: titleTextStyle,
      ),
      actions: actions,
    );
  }

  @override
  Size get preferredSize => AppBar().preferredSize;
}
