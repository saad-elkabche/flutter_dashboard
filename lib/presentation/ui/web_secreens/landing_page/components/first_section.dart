import 'dart:ui';

import 'package:ayoub_baali/core/constants/app_color.dart';
import 'package:ayoub_baali/core/constants/app_images_icons.dart';
import 'package:ayoub_baali/core/constants/enums.dart';
import 'package:ayoub_baali/presentation/ui/components/button1.dart';
import 'package:ayoub_baali/presentation/ui/components/two_color_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';



class FirstSection extends StatelessWidget {

  SecreenSize size;
  void Function()? getStarted;
  void Function()? learnMore;


   FirstSection({required this.size,this.getStarted,this.learnMore});

  @override
  Widget build(BuildContext context) {
    if(size!=SecreenSize.small){
      return Padding(
        padding: EdgeInsets.symmetric(horizontal:size==SecreenSize.large?100:8,vertical: 40),
        child: Row(
          children: [
            Expanded(
                flex: 3,
                child: firstPeace()),
            Expanded(
                flex:2,
                child: secondPeace())
          ],
        ),
      );
    }
    return Stack(
      children: [
          Container(
            width: double.infinity,
            height: 370,
            color: AppColors.primaryColor,
          ),
          Positioned(
              right: 0,
              top:75 ,
              child: secondPeace()
          ),
        Container(
          width:double.infinity,
          height: 370,
          color: AppColors.primaryColor.withOpacity(0.85),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 18.0),
          child: firstPeace(),
        )
      ],
    );
  }




  Widget firstPeace(){
    return Column(


      crossAxisAlignment: CrossAxisAlignment.start,

      children: [



       TwoColorText(fontSize: 42,
           textOne: 'EBP ',
           textTwo: 'Earn Big\nProfit',
           colorOne: AppColors.secondaryColor,
           colortwo: size!=SecreenSize.small?AppColors.primaryColor:Colors.white
       ),

        const SizedBox(height:30 ,),



        ConstrainedBox(
          constraints: const BoxConstraints(
            maxWidth: 600
          ),
          child: Text(
            'We offer various secure and risk free earning opportunities'
            'to our global users, who want to earn an attractive income.'
            'Join us to achieve your goals with our professional'
              'assistance and services. ',
            style: GoogleFonts.poppins(color:size!=SecreenSize.small?Colors.black:Colors.white,fontWeight: FontWeight.w500,fontSize: 15),
          ),
        ),


        const SizedBox(height:30 ,),


        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            MySimpleBotton(name: 'Get Started',fontSize: 13, width: 120, height: 35,onclick: getStarted),
            const SizedBox(width: 10,),
            MySimpleBotton(name: 'Learn More',
              width: 120,
              height: 35,
              fontSize: 13,
              onclick: learnMore,
              textColor: size==SecreenSize.small?AppColors.secondaryColor:Colors.white,
              color: size==SecreenSize.small?Colors.white:AppColors.primaryColor,
            ),
          ],
        )


      ],
    );
  }

  Widget secondPeace(){
    return Center(
      child: Image.asset(AppImages.img_web_first_section,
        width: size==SecreenSize.large?400:size==SecreenSize.medium?400:200,
        fit: BoxFit.cover,),
    );
  }



}
