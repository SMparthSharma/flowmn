import 'package:flowmn/presentation/auth/pages/register.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../common/widget/app_bar/app_bar.dart';
import '../../../common/widget/button/basic_app_button.dart';
import '../../../core/configs/assets/app_vector.dart';
class SigninPage extends StatelessWidget {
  const SigninPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      bottomNavigationBar: _signinFild(context),
      appBar: BasicAppBar(title: SvgPicture.asset(AppVector.logo,height: 55,width: 50,)),
      body: Padding(
        padding: const EdgeInsets.symmetric(
            vertical: 50,
            horizontal: 30
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _register(),
            SizedBox(height: 50,),
            _email(context),
            SizedBox(height: 20,),
            _password(context),
            SizedBox(height: 20,),
            BasicAppButton(onPressed: (){},
                title: 'Sign In'
            ),




          ],
        ),
      ),
    );
  }
  Widget _register(){
    return Text('Register',
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),
    );
  }

  Widget _email(BuildContext context){
    return TextField(decoration: InputDecoration(
        hintText: "Email"
    ).applyDefaults(Theme.of(context).inputDecorationTheme),
    );
  }
  Widget _password(BuildContext context){
    return TextField(decoration: InputDecoration(
        hintText: "Password"
    ).applyDefaults(Theme.of(context).inputDecorationTheme),
    );
  }
  Widget _signinFild(BuildContext context){
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Don't Have An Account?",
            style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 14
            ),

          ),
          TextButton(
              onPressed: (){
                Navigator.pushReplacement(context ,
                    MaterialPageRoute(builder: (BuildContext context)=>RegisterPage())
                );
              },
              child: Text('Register')
          )
        ],
      ),
    );
  }
  }

