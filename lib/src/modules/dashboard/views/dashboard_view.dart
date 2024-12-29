import 'package:flutter/material.dart';
import 'package:monna_no_nihongo/src/modules/dashboard/controllers/dashboard_controller.dart';
import 'package:monna_no_nihongo/src/modules/shared/base/base_view.dart';

class DashboardView extends BaseView<DashboardController> {
  @override
  PreferredSizeWidget? appBar(BuildContext context) {
    return AppBar(
      title: const Text('Dashboard'),
      actions: [
        IconButton(
          onPressed: () {
            controller.logOut();
          },
          icon: const Icon(Icons.logout),
        ),
      ],
    );
  }

  @override
  Widget body(BuildContext context) {
    return const Center(
      child: Text('Dashboard'),
    );
  }
}
