import 'package:flutter/material.dart';
import 'package:monna_no_nihongo/src/modules/auth/controllers/login_controller.dart';
import 'package:monna_no_nihongo/src/modules/shared/base/base_view.dart';

class LoginView extends BaseView<LoginController> {
  @override
  PreferredSizeWidget? appBar(BuildContext context) {
    return null;
  }

  @override
  Widget body(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Form(
        key: controller.formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Welcome Back!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 40),
            TextFormField(
              controller: controller.emailController,
              decoration: const InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.email),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your email';
                }
                return null;
              },
            ),
            const SizedBox(height: 20),
            TextFormField(
              controller: controller.passwordController,
              obscureText: true,
              decoration: const InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.lock),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your password';
                }
                return null;
              },
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                if (controller.formKey.currentState?.validate() ?? false) {
                  // Perform login action here
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Logging in...')),
                  );
                }
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 16.0),
                minimumSize: Size(double.infinity, 50),
              ),
              child: const Text('Login'),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text("Don't have an account?"),
                TextButton(
                  onPressed: controller.navigateToSignUp,
                  child: const Text('Sign Up'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
