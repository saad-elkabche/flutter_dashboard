import 'package:ayoub_baali/core/constants/app_color.dart';
import 'package:ayoub_baali/core/constants/app_images_icons.dart';
import 'package:ayoub_baali/core/constants/enums.dart';
import 'package:ayoub_baali/presentation/ui/components/two_color_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class SectionThree extends StatelessWidget {
  SecreenSize size;

   SectionThree({required this.size}) ;

  @override
  Widget build(BuildContext context) {
    if(size==SecreenSize.large){
      return Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              img1(),
              ourMatrix(),
            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              autoSupportingSystem(),
              img2()
            ],
          )


        ],
      );
    }
    return Column(
      children: [
        ourMatrix(),
        img1(),
        autoSupportingSystem(),
        img2()
      ],
    );


  }

  Widget ourMatrix(){
    return Column(
      children: [
        TwoColorText(fontSize: 22,
            textOne: 'Our Matrix ',
            textTwo: 'Plan',
            colorOne: AppColors.secondaryColor,
             colortwo: AppColors.primaryColor
        ),
        SizedBox(height: 15,),
         ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 500),
          child: Text(
            'EBP has introduced a very unique and auto supporting system for its users.'
            'In this system the networker can earn a maximum commission from unlimited'
            'In this system the networker can earn a maximum commission from unlimited'
            'levels without any restrictions and limitations. In this referral system, the 1st'
            ' two persons who are directly joined with you are said to be your Basic Line'
            'while the last (3rd) person who is also directly joined with you will be called '
            'your Advance Line. You can get unlimited 40% commission of membership'
            'from every basic line of your advance line.',
            textAlign: size==SecreenSize.large?TextAlign.start:TextAlign.center,
            style: GoogleFonts.poppins(color: Colors.black,fontWeight: FontWeight.normal),
          ),
        )
      ],
    );
  }

  Widget autoSupportingSystem(){
    return Column(
      children: [
        TwoColorText(fontSize: 22,
            textOne: 'AUTO SUPPORTING ',
            textTwo: 'SYSTEM',
            colorOne: AppColors.secondaryColor,
            colortwo: AppColors.primaryColor
        ),
        SizedBox(height: 15,),
        ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 500),
          child: Text(
                'EBP has introduced a very unique and superb Auto Supporting System (ASS),'
                'In Auto Supporting System, every senior can gift maximum persons to advance'
                'line and he can get maximum commission. User can get 0.45% commission'
                'upto 10 levels of his basic lines and 5% commission from every basic lines of'
                'his advance line.',
            textAlign: size==SecreenSize.large?TextAlign.start:TextAlign.center,
            style: GoogleFonts.poppins(color: Colors.black,fontWeight: FontWeight.normal),
          ),
        )
      ],
    );
  }
  
  
  Widget img1()=>Image.asset(AppImages.imgOneThirdSection,fit: BoxFit.cover,);
  Widget img2()=>Image.asset(AppImages.imgTwoThirdsection,fit: BoxFit.cover,);



}
