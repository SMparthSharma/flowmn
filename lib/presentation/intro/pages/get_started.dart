import 'package:flowmn/common/widget/button/basic_app_button.dart';
import 'package:flowmn/core/configs/assets/app_image.dart';
import 'package:flowmn/core/configs/assets/app_vector.dart';
import 'package:flowmn/core/configs/theme/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../choose_mode/page/choose_mode.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({super.key});

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
                    image: AssetImage(AppImage.introBG1), fit: BoxFit.fill)),

          ),
          Container(color: Colors.black.withValues(alpha: 0.15),),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 40,
              horizontal: 40
            ),
            child: Column(
              children: [
                SizedBox(
                  width: 250,
                  height: 150,
                  child: SvgPicture.asset(
                    AppVector.logo,
                    fit: BoxFit.cover,
                  ),
                ),
                Spacer(),
                Text('Feel the Beat, Own the Moment!',
                  style: TextStyle(
                      fontFamily: 'Satoshi-Bold',
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold
                  ),),
                SizedBox(height: 15,),
                Text("Discover Your Soundtrack: Stream, Share, and Savor Every Note of Your Life's Journey with Flowmn",
                  style: TextStyle(fontSize: 12,color: AppColors.gray,fontWeight: FontWeight.w600,fontFamily: 'Satoshi-Regular'),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 30,),
                BasicAppButton(onPressed: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (BuildContext context)=>ChooseModePage())
                  );
                }, title: 'Get Started')
              ],
            ),
          ),

        ],
      ),
    );
  }
}
