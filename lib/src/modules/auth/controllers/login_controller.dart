import 'package:appwrite/appwrite.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:monna_no_nihongo/src/core/data/repository/auth_repository.dart';
import 'package:monna_no_nihongo/src/core/routes/app_pages.dart';
import 'package:monna_no_nihongo/src/modules/shared/base/base_controller.dart';

class LoginController extends BaseController {
  final AuthRepository authRepository;
  LoginController(this.authRepository);
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  clearTextFields() {
    emailController.clear();
    passwordController.clear();
  }

  navigateToSignUp() {
    Get.toNamed(Routes.SIGNUP);
  }

  login({required String email, required String password}) async {
    if (formKey.currentState!.validate()) {
      formKey.currentState!.save();
      try {
        await authRepository.login({
          "email": email.toString(),
          "password": password.toString(),
        }).then((value) {
          clearTextFields();
          Fluttertoast.showToast(msg: "Login successful");
          // Get.offAllNamed(Routes.HOME);
        }).catchError((error) {
          logger.d(error);
          if (error is AppwriteException) {
            Fluttertoast.showToast(msg: error.message ?? "Unknown Appwrite error");
          } else {
            Fluttertoast.showToast(msg: "Unexpected error during login");
          }
        });
      } catch (e) {
        Fluttertoast.showToast(msg: "Unknown error during login: ${e.toString()}");
      }
    }
  }
}
