import 'package:appwrite/appwrite.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:monna_no_nihongo/src/core/data/repository/auth_repository.dart';
import 'package:monna_no_nihongo/src/core/routes/app_pages.dart';
import 'package:monna_no_nihongo/src/modules/shared/base/base_controller.dart';
import 'package:monna_no_nihongo/src/modules/shared/widgets/loading.dart';

class RegisterController extends BaseController {
  final AuthRepository authRepository;
  RegisterController(this.authRepository);

  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  var isLoading = false.obs;

  navigateToLogin() {
    Get.toNamed(Routes.LOGIN);
  }

  signUp({
    required String name,
    required String email,
    required String password,
  }) async {
    if (formKey.currentState!.validate()) {
      formKey.currentState!.save();
      try {
        final userId = ID.unique();
        print("Generated User ID: $userId");

        await authRepository.signUp({
          "userId": userId.toString(),
          "name": name.toString(),
          "email": email.toString(),
          "password": password.toString(),
        }).then((value) {
          Fluttertoast.showToast(msg: "Account created successfully");
        }).catchError((error) {
          logger.d(error);
          if (error is AppwriteException) {
            Fluttertoast.showToast(msg: error.message ?? "Unknown Appwrite error");
          } else {
            Fluttertoast.showToast(msg: "Unexpected error during sign up");
          }
        });
      } catch (e) {
        Fluttertoast.showToast(msg: "SignUp failed: ${e.toString()}");
      }
    }
  }
}
