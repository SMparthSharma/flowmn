import 'package:flowmn/common/helper/is_dark_mode.dart';
import 'package:flowmn/common/widget/button/basic_app_button.dart';
import 'package:flowmn/core/configs/assets/app_image.dart';
import 'package:flowmn/core/configs/assets/app_vector.dart';
import 'package:flowmn/presentation/auth/pages/register.dart';
import 'package:flowmn/presentation/auth/pages/signin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../common/widget/app_bar/app_bar.dart';
import '../../../core/configs/theme/app_color.dart';

class SigninOrSignupPage extends StatelessWidget {
  const SigninOrSignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          BasicAppBar(),
          Align(
            alignment: Alignment.bottomLeft,
            child:Image.asset(AppImage.authBG,alignment: Alignment.bottomLeft,height: 200,width: 150,),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: SvgPicture.asset(AppVector.bottomPattern)
          ),
          Align(
            alignment: Alignment.topRight,
            child: SvgPicture.asset(AppVector.topPattern),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(AppVector.logo,
                  height: 70,width: 50,
                ),
                SizedBox(height: 25,),
               Text('Enjoy Listening To Music',
                  style: TextStyle(
                      fontFamily: 'Satoshi-Bold',
                      color: context.isDarkMode? Colors.white:Colors.black,
                      fontSize: 26,
                      fontWeight: FontWeight.bold
                  ),),
                SizedBox(height: 15,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child:const Text("Discover Your Soundtrack: Stream, Share, and Savor Every Note of Your Life's Journey with Flowmn",
                    style: TextStyle(fontSize: 15,color: AppColors.gray,fontFamily: 'Satoshi-Regular'),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: 50,),
                Row(
                  children: [
                    SizedBox(width: 30,),
                    Expanded(flex: 1,child: BasicAppButton(onPressed: (){
                      Navigator.push(context,
                          MaterialPageRoute(builder: (BuildContext contex)=>RegisterPage())
                      );
                    },height: 50,
                        title: 'Register'),
                    ),
                    SizedBox(width: 30,),
                    Expanded(
                        flex: 1,
                        child: TextButton(onPressed: (){
                          Navigator.push(context,
                              MaterialPageRoute(builder: (BuildContext context)=>SigninPage())
                          );
                        },
                            child: Text('Sign in',style: TextStyle(fontFamily: 'Satoshi-Bold',
                                color: context.isDarkMode? Colors.white:Colors.black,
                                fontSize: 16),)
                        )),
                  ],
                )
              ],
            ),
          ),



        ],
      ),
    );
  }
}
