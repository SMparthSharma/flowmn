import 'package:flowmn/common/widget/app_bar/app_bar.dart';
import 'package:flowmn/common/widget/button/basic_app_button.dart';
import 'package:flowmn/core/configs/assets/app_vector.dart';
import 'package:flowmn/presentation/auth/pages/signin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: _signinFild(context),
      appBar: BasicAppBar(
          title: SvgPicture.asset(
        AppVector.logo,
        height: 55,
        width: 50,
      )),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _register(),
            SizedBox(
              height: 50,
            ),
            _fullname(context),
            SizedBox(
              height: 20,
            ),
            _email(context),
            SizedBox(
              height: 20,
            ),
            _password(context),
            SizedBox(
              height: 20,
            ),
            BasicAppButton(onPressed: () {}, title: 'Create Account'),
          ],
        ),
      ),
    );
  }

  Widget _register() {
    return Text(
      'Register',
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
    );
  }

  Widget _fullname(BuildContext context) {
    return TextField(
      decoration: InputDecoration(hintText: "Full Name")
          .applyDefaults(Theme.of(context).inputDecorationTheme),
    );
  }

  Widget _email(BuildContext context) {
    return TextField(
      decoration: InputDecoration(hintText: "Email")
          .applyDefaults(Theme.of(context).inputDecorationTheme),
    );
  }

  Widget _password(BuildContext context) {
    return TextField(
      decoration: InputDecoration(hintText: "Password")
          .applyDefaults(Theme.of(context).inputDecorationTheme),
    );
  }

  Widget _signinFild(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Already Have An Account?',
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
          ),
          TextButton(
              onPressed: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => SigninPage()));
              },
              child: Text('Sign in'))
        ],
      ),
    );
  }
}
