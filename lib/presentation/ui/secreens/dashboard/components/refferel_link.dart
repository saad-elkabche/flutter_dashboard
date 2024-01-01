import 'dart:math';

import 'package:ayoub_baali/core/constants/app_color.dart';
import 'package:ayoub_baali/core/constants/app_images_icons.dart';
import 'package:ayoub_baali/core/constants/enums.dart';
import 'package:ayoub_baali/presentation/ui/components/button1.dart';
import 'package:ayoub_baali/presentation/ui/components/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';



class ReferrelLink extends StatelessWidget {
    SecreenSize size;
   ReferrelLink({required this.size}) ;

  @override
  Widget build(BuildContext context) {
    return size==SecreenSize.small || size==SecreenSize.medium
        
        
        ?Center(
          child: Container(
            height: 35,
            //width: 300,
            margin: const EdgeInsets.symmetric(vertical: 18,horizontal: 10),
            constraints:const BoxConstraints(
              maxWidth: 410
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5)
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MySimpleBotton(name: 'My Referral link',height: 35,width: 130,fontSize: 10,onclick: (){},),
                const Expanded(child: Text('https://abp.net/b/sdr3545tfs',overflow: TextOverflow.ellipsis,style: TextStyle(color: AppColors.primaryColor,fontSize: 10,fontWeight: FontWeight.bold),)),
                MySimpleBotton(name: 'copy',height: 35,width: 75,fontSize: 10,onclick: (){},),
              ],
            ),
          ),
        )
        
        
        
        
        
        :Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
                child:Row(
                  children: [
                    Text('Refferel link',style: GoogleFonts.poppins(color: Colors.black),),
                    SizedBox(width: 15,),
                    ImageIcon(AssetImage(AppImages.ic_question_mark),color: AppColors.secondaryColor,)
                  ],
                )
            ),
            Transform.rotate(angle: pi/4,child: Icon(Icons.arrow_upward,color: AppColors.secondaryColor,)),
            
          ],
        ),
        const SizedBox(height: 10,),
        const Text('https://abp.net/b/sdr3545tfs',style: TextStyle(color: AppColors.primaryColor,fontSize: 14,fontWeight: FontWeight.bold),),
        const SizedBox(height: 10,),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            MySimpleBotton(name: 'Copy', width: 80, height: 10,fontSize: 10,onclick: (){},),
            const SizedBox(width: 10,),
            MySimpleBotton(name: 'Share', width: 80, height: 10,fontSize: 10,onclick: (){},)
          ],
        )
      ],
    );
  }
}
