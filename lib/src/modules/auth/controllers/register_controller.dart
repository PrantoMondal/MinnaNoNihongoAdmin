import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:monna_no_nihongo/src/modules/shared/base/base_controller.dart';

class RegisterController extends BaseController {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  navigateToLogin() {
    Get.toNamed('/login');
  }
}
