import 'dart:ui';

import 'package:flowmn/presentation/choose_mode/bloc/theme_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import '../../../common/widget/button/basic_app_button.dart';
import '../../../core/configs/assets/app_image.dart';
import '../../../core/configs/assets/app_vector.dart';
import '../../auth/pages/signin_or_signup.dart';


class ChooseModePage extends StatelessWidget {
  const ChooseModePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            // padding: EdgeInsets.symmetric(horizontal: 40,vertical: 40),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(AppImage.introBG2 ), fit: BoxFit.fill)),

          ),
          Container(color: Colors.black.withValues(alpha: 0.15),),
          Padding(
            padding: const EdgeInsets.symmetric(
                vertical: 40,
                horizontal: 40
            ),
            child: Column(
              children: [
                SvgPicture.asset(
                  AppVector.logo,
                  height: 70,width: 100,
                ),
                Spacer(),
                Text('Choose Mode',
                  style: TextStyle(
                      fontFamily: 'Satoshi-Bold',
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold
                  ),),
                SizedBox(height: 40,),
                Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        GestureDetector(
                          onTap:(){
                            context.read<ThemeCubit>().updateTheme(ThemeMode.dark);
                          } ,
                          child: ClipOval(
                            child: BackdropFilter(
                              filter: ImageFilter.blur(sigmaX: 10,sigmaY: 10),
                              child: Container(
                                padding: EdgeInsets.all(12),
                                height: 80,
                                width: 80,

                                decoration: BoxDecoration(shape: BoxShape.circle,color: Color(0xff30393c).withValues(alpha: 0.5),),
                                child: SvgPicture.asset(AppVector.moon,color: Colors.white,fit: BoxFit.scaleDown,),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 10,),
                        Text('Dark',
                        style: TextStyle(color:Colors.white,fontSize: 20,fontFamily: 'Satoshi-Bold',fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                    SizedBox(width: 50,),
                    Column(
                      children: [
                        GestureDetector(
                          onTap:(){
                            context.read<ThemeCubit>().updateTheme(ThemeMode.light);
                          } ,
                          child: ClipOval(
                            child: BackdropFilter(
                              filter: ImageFilter.blur(sigmaX: 10,sigmaY: 10),
                              child: Container(
                                padding: EdgeInsets.all(12),
                                height: 80,
                                width: 80,

                                decoration: BoxDecoration(shape: BoxShape.circle,color: Color(0xff30393c).withValues(alpha: 0.5),),
                                child: SvgPicture.asset(AppVector.sun,color: Colors.white,fit: BoxFit.contain,),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 10,),
                        Text('Light',
                          style: TextStyle(color: Colors.white,fontSize: 20,fontFamily: 'Satoshi-Bold',fontWeight: FontWeight.w500),
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(height: 60,),
                BasicAppButton(onPressed: (){
                      Navigator.push(context,
                      MaterialPageRoute(builder:(BuildContext context)=>SigninOrSignupPage())
                      );
                }, title: 'Continued')
              ],
            ),
          ),

        ],
      ),
    );
  }
}
