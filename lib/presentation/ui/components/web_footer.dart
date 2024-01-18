import 'dart:math';

import 'package:ayoub_baali/core/constants/app_color.dart';
import 'package:ayoub_baali/core/constants/app_images_icons.dart';
import 'package:ayoub_baali/core/constants/enums.dart';
import 'package:ayoub_baali/presentation/ui/components/two_color_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';



class WebFooter extends StatelessWidget {
  SecreenSize size;
  WebFooter({required this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: AppColors.primaryColor,
      child:size!=SecreenSize.small?largeMediumWidgets():smallWidgets() ,
    );
  }

  Widget smallWidgets() {
    return Column(
      children: [
        logo(),
        Row(
          mainAxisAlignment:MainAxisAlignment.spaceEvenly ,
          children: [
            usefullLiks(),
            downloadApp()
          ],
        ),
        const SizedBox(height: 20,),
        contactUs(),
        SizedBox(height: 20,),
        copyRights()
      ],
    );
  }

  Widget largeMediumWidgets() {
    return Column(
      children: [
        Row(
          children: [
            Expanded(flex:3,child: logo()),
            Expanded(
                flex: 7,
                child:Row(
                  children: [
                    Expanded(
                      child: Center(child: usefullLiks(),),
                    ),
                    Expanded(
                      child: Center(child: downloadApp(),),
                    ),
                    Expanded(
                      child: Center(child: contactUs(),),
                    )
                  ],
                )
            )
          ],
        ),
        SizedBox(height: 20,),
        copyRights()
      ],
    );
  }
  Widget logo(){
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 20),
      child: Column(
        crossAxisAlignment:size!=SecreenSize.small? CrossAxisAlignment.start:CrossAxisAlignment.center,
        children: [
          Image.asset(AppImages.img_logo_1,height: 30,),
          const SizedBox(height: 15,),
          Text(
            'EBP is a digital platform that provides various'
            'risk free earning opportunities for investors and'
            'networkers so that they can boost up their'
            'earning levels with mental satisfaction.',
            style: GoogleFonts.poppins(color: Colors.white),
          )
        ],
      ),
    );
  }

  Widget usefullLiks(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Useful links',style: GoogleFonts.poppins(fontWeight:FontWeight.bold,color: Colors.white ),),
        const SizedBox(height: 10,),
        Container(
          width: 50,
          height: 2,
          color: AppColors.secondaryColor,
        ),
        const SizedBox(height: 15,),
        Text('Privacy Policy',style: GoogleFonts.poppins(color: Colors.white,fontWeight:FontWeight.normal ),),
        const SizedBox(height: 15,),
        Text('Refund Policy',style: GoogleFonts.poppins(color: Colors.white,fontWeight:FontWeight.normal ),),
      ],
    );
  }
  Widget downloadApp(){
    return Column(

      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Download app',style: GoogleFonts.poppins(fontWeight:FontWeight.bold,color: Colors.white ),),
        const SizedBox(height: 10,),
        Container(
          width: 50,
          height: 2,
          color: AppColors.secondaryColor,
        ),
        const SizedBox(height: 15,),
       Row(
         mainAxisSize: MainAxisSize.min,
         children: [
            const ImageIcon(AssetImage(AppImages.ic_play_store),color: Colors.white,),
            const SizedBox(width: 10,),
            Text('Google Play',style: GoogleFonts.poppins(color: Colors.white,fontWeight:FontWeight.normal ))
         ],
       ),
        const SizedBox(height: 15,),

        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const ImageIcon(AssetImage(AppImages.ic_app_store),color: Colors.white,),
            const SizedBox(width: 10,),
            Text('App Store',style: GoogleFonts.poppins(color: Colors.white,fontWeight:FontWeight.normal ),)
          ],
        )
      ],
    );
  }

  Widget contactUs(){
    return Padding(
      padding: const EdgeInsets.only(right: 10.0),
      child: Column(
        crossAxisAlignment:size!=SecreenSize.small? CrossAxisAlignment.start:CrossAxisAlignment.center,
        children: [
          Text('Contact Us',style: GoogleFonts.poppins(fontWeight:FontWeight.bold,color: Colors.white ),),
          const SizedBox(height: 10,),
          Container(
            width: 50,
            height: 2,
            color: AppColors.secondaryColor,
          ),
          const SizedBox(height: 15,),

          Text('abc cryptocurrency Avenue, xyz \n'
            '123 city ABC 12345\n'
            'Contact us: +11694827402322',
            textAlign: size==SecreenSize.small?TextAlign.center:TextAlign.start,
            style: GoogleFonts.poppins(color: Colors.white,fontWeight:FontWeight.normal ),),
          const SizedBox(height: 15,),

          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              socialIcon(AppImages.ic_instagram),
              socialIcon(AppImages.ic_linkdin),
              socialIcon(AppImages.ic_twitter),
              socialIcon(AppImages.ic_facebook)
            ],
          )
        ],
      ),
    );
  }

  Widget socialIcon(String img){
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Image.asset(img,fit: BoxFit.cover,),
    );
  }

  Widget copyRights(){
    return SizedBox(
      height: 50,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: double.infinity,
            height: 1.5,
            color: Colors.grey,
          ),
          Expanded(
            child: Center(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('Copyright',style: GoogleFonts.poppins(color: Colors.white,fontWeight:FontWeight.normal ),),
                  const Icon(Icons.copyright_rounded,color: Colors.white,size: 10,),
                  Text('2023, ',style: GoogleFonts.poppins(color: Colors.white,fontWeight:FontWeight.normal ),),
                  TwoColorText(fontSize: 12, textOne: 'All Right Reserved ', textTwo: 'EBP', colorOne: Colors.white, colortwo: AppColors.secondaryColor)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }




}
