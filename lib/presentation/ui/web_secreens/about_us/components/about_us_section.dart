import 'package:ayoub_baali/core/constants/app_color.dart';
import 'package:ayoub_baali/core/constants/app_images_icons.dart';
import 'package:ayoub_baali/core/constants/enums.dart';
import 'package:ayoub_baali/presentation/ui/components/two_color_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class AboutUsSection extends StatelessWidget {
  SecreenSize size;
  double width;


   AboutUsSection({required this.size,required this.width});

  @override
  Widget build(BuildContext context) {
    if(size==SecreenSize.small){
      return Padding(
        padding: EdgeInsets.only(left: 8),
        child: Column(
          children: [
            title(),
            SizedBox(height: 15,),
            picture(),
            SizedBox(height: 10,),
            description(),
            SizedBox(height: 10,),
          ],
        ),
      );
    }else{
      return Row(
        mainAxisAlignment:MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Expanded(
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  title(),
                  const SizedBox(height: 10,),
                  SizedBox(
                      width: width<830?width-400:null,
                      child: description())
                ],
              ),
            ),
          ),
          Expanded(child: Center(child: picture()))
        ],
      );
    }

  }

  Widget title(){
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: size==SecreenSize.small?CrossAxisAlignment.center:CrossAxisAlignment.start,
      children: [
        TwoColorText(
            fontSize:width>1500?35:20,
            textOne: 'About ',
            textTwo: 'Us',
            colorOne: AppColors.primaryColor,
            colortwo: AppColors.secondaryColor),
        const SizedBox(height: 10,),
        Container(
          width: 70,
          height: 1.5,
          color: Colors.grey,
        )
      ],
    );
  }

  Widget description(){
    return ConstrainedBox(
      constraints: const BoxConstraints(
        maxWidth: 450
      ),
      child: Text(
        'We have expert team members in trading and multi-level marketing'
        'who ave the best experience in their fields. We provide the best and'
        'most secure system for investors and networkers that helps hem to'
        'earn risk-free earning. We have also provided various digital earning'
        'services to our global customers for the last 20 years. '
        ,
        style: GoogleFonts.poppins(
            height: 2.5,
            color: Colors.black,fontWeight: FontWeight.normal),
      ),
    );
  }

  Widget picture(){
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(color: Colors.grey,offset: Offset(4,4),blurRadius: 10)
        ]
      ),
      padding: const EdgeInsets.symmetric(horizontal: 7,vertical: 7),
      child: Image.asset(AppImages.imgAboutUs,fit: BoxFit.cover,width: 250),
    );
  }


}
