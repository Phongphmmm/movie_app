import 'package:blog_app/common/helper/navigation/app_navigation.dart';
import 'package:blog_app/core/configs/theme/app_colors.dart';
import 'package:blog_app/data/auth/models/signup_req_params.dart';
import 'package:blog_app/domain/auth/usecases/signup.dart';
import 'package:blog_app/presentation/auth/pages/sign_in.dart';
import 'package:blog_app/presentation/home/pages/home.dart';
import 'package:blog_app/service_locator.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:reactive_button/reactive_button.dart';

class SignUpPage extends StatelessWidget {
  SignUpPage({super.key});

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            minimum: EdgeInsets.only(top: 100, right: 16, left: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                _signUpText(),
                SizedBox(
                  height: 30,
                ),
                _emailField(),
                SizedBox(
                  height: 20,
                ),
                _passwordField(),
                SizedBox(
                  height: 30,
                ),
                _signupButton(context),
                SizedBox(
                  height: 20,
                ),
                _signInText(context)
              ],
            )));
  }

  Widget _signUpText() {
    return Text(
      'Sign Up',
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 24,
      ),
    );
  }

  Widget _emailField() {
    return TextField(
        controller: _emailController,
        decoration: const InputDecoration(
          hintText: 'Email',
        ));
  }

  Widget _passwordField() {
    return TextField(
        controller: _passwordController,
        decoration: const InputDecoration(
          hintText: 'Password',
        ));
  }

  Widget _signupButton(BuildContext context) {
    return ReactiveButton(
        title: 'Sign Up',
        activeColor: AppColors.primary,
        onPressed: () async {
          await sl<SignUpUseCase>().call(
              params: SignupReqParams(
                  email: _emailController.text,
                  password: _passwordController.text));
        },
        onSuccess: () {
          AppNavigator.pushAndRemove(context, const HomePage());
        },
        onFailure: (error) {});
  }

  Widget _signInText(BuildContext context) {
    return Text.rich(TextSpan(children: [
      TextSpan(text: "Dont you have an account?"),
      TextSpan(
          text: 'Sign Up',
          style: TextStyle(color: Colors.blue),
          recognizer: TapGestureRecognizer()
            ..onTap = () {
              AppNavigator.push(context, SignInPage());
            })
    ]));
  }
}
