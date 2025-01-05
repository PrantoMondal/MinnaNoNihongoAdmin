import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:monna_no_nihongo/src/core/config/build_config.dart';
import 'package:monna_no_nihongo/src/core/constants/app_colors.dart';
import 'package:monna_no_nihongo/src/core/constants/app_textstyles.dart';
import 'package:monna_no_nihongo/src/modules/shared/base/base_controller.dart';
import 'package:monna_no_nihongo/src/modules/shared/model/page_state.dart';
import 'package:monna_no_nihongo/src/modules/shared/widgets/loading.dart';

abstract class BaseView<Controller extends BaseController> extends GetView<Controller> {
  final GlobalKey<ScaffoldState> globalKey = GlobalKey<ScaffoldState>();

  final logger = BuildConfig.instance.envConfig.logger;

  Widget body(BuildContext context);

  PreferredSizeWidget? appBar(BuildContext context);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Stack(
        children: [
          annotatedRegion(context),
          Obx(() => controller.pageState == PageState.LOADING ? _showLoading() : Container()),
          Obx(() => controller.errorMessage.isNotEmpty ? showErrorSnackBar(controller.errorMessage) : Container()),
          Container(),
        ],
      ),
    );
  }

  Widget annotatedRegion(BuildContext context) {
    return AnnotatedRegion(
      value: SystemUiOverlayStyle(
        //Status bar color for android
        statusBarColor: statusBarColor(),
        statusBarIconBrightness: Brightness.dark,
      ),
      child: Material(
        color: Colors.transparent,
        child: pageScaffold(context),
      ),
    );
  }

  Widget pageScaffold(BuildContext context) {
    return Scaffold(
      //sets ios status bar color
      backgroundColor: pageBackgroundColor(),
      resizeToAvoidBottomInset: resizeToAvoidBottomInset(),
      key: globalKey,
      appBar: appBar(context),
      floatingActionButtonLocation: floatingActionButtonLocation(),
      floatingActionButton: floatingActionButton(),
      body: pageContent(context),
      bottomNavigationBar: bottomNavigationBar(),
      drawer: drawer(),
    );
  }

  Widget pageContent(BuildContext context) {
    return SafeArea(
      child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              opacity: 0.1,
              image: AssetImage('assets/images/sakura.png'),
              fit: BoxFit.contain,
            ),
          ),
          child: body(context)),
    );
  }

  Widget showErrorSnackBar(String message) {
    final snackBar = SnackBar(
      content: Text(
        message,
        style: kTextSMNormal.copyWith(
          color: AppColors.baseWhite,
        ),
      ),
      backgroundColor: AppColors.red600,
      behavior: SnackBarBehavior.floating,
    );

    return Builder(
      builder: (BuildContext contest) {
        WidgetsBinding.instance.addPostFrameCallback((_) {
          ScaffoldMessenger.of(contest).showSnackBar(snackBar);
          controller.showErrorMessage("");
        });
        return Container();
      },
    );
    return Container();
  }

  void showToast(String message) {
    Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_SHORT,
      timeInSecForIosWeb: 1,
    );
  }

  Color pageBackgroundColor() {
    return AppColors.baseWhite;
  }

  Color statusBarColor() {
    return AppColors.black;
  }

  Widget? floatingActionButton() {
    return null;
  }

  Widget? bottomNavigationBar() {
    return null;
  }

  Widget? drawer() {
    return null;
  }

  Widget _showLoading() {
    return const Loading();
  }

  FloatingActionButtonLocation? floatingActionButtonLocation() {
    return null;
  }

  bool? resizeToAvoidBottomInset() {
    return true;
  }
}
