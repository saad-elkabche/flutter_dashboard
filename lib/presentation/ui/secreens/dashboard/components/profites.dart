

import 'package:ayoub_baali/core/constants/app_color.dart';
import 'package:ayoub_baali/core/constants/app_images_icons.dart';
import 'package:ayoub_baali/core/constants/enums.dart';
import 'package:ayoub_baali/presentation/ui/components/button1.dart';
import 'package:ayoub_baali/presentation/ui/components/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';


class Profite extends StatelessWidget {
  Color color;
  String name;
  String action;
  String profit;
  Color textColor;
  String icon;


  Profite({this.color=AppColors.primaryColor, required this.icon,required this.profit,required this.name, required this.action, this.textColor=Colors.white});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      width: 250,
      margin: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
      padding: const EdgeInsets.only(left: 7),
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(20),
          boxShadow: const [BoxShadow(color: Colors.grey,offset: Offset(3,3),blurRadius: 7)]
      ),
      child: Row(children: [
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(name,style:  GoogleFonts.poppins(fontSize: 15,color: textColor),textAlign: TextAlign.center,),
              Text("\$${profit}",style: GoogleFonts.poppins(fontSize: 13,color: textColor),),
              MyCustomButton(name: name,margin: 0,color: AppColors.secondaryColor,height: 35,fontSize: 8,)
            ],
          ),
        ),
        Center(
            child: Align(
              alignment: Alignment.topRight,
              child: Container(
                margin: EdgeInsets.only(right: 10,top: 10),
                width: 45,
                height: 45,
                decoration:const BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.secondaryColor,
                ),
                child:Image.asset(icon),
              ),
            )
        )
      ],
      ),
    );
  }
}




