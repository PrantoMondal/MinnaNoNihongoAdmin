import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:monna_no_nihongo/src/core/routes/app_pages.dart';
import 'package:monna_no_nihongo/src/modules/shared/base/base_controller.dart';

class LoginController extends BaseController {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  navigateToSignUp() {
    Get.toNamed(Routes.SIGNUP);
  }
}
