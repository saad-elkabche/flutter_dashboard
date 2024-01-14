import 'package:ayoub_baali/core/constants/app_color.dart';
import 'package:ayoub_baali/core/constants/app_images_icons.dart';
import 'package:ayoub_baali/core/constants/enums.dart';
import 'package:ayoub_baali/presentation/ui/components/button1.dart';
import 'package:ayoub_baali/presentation/ui/components/separator.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PlanConfirmation extends StatelessWidget {

  SecreenSize size;

   PlanConfirmation({required this.size}) ;


   final largeWidth=400.0;
   final smallWidth=310.0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Align(
        alignment: Alignment.topCenter,
        child: Container(
          margin: EdgeInsets.only(top: 60),
          width:size==SecreenSize.large?largeWidth: smallWidth,
          height:290 ,
          padding:const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.black,width: 0.6)
          ),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 5,),
              Row(
                mainAxisAlignment:MainAxisAlignment.spaceBetween ,
                children: [
                      Text('Confirmation',style: GoogleFonts.poppins(color: AppColors.primaryColor,fontWeight: FontWeight.bold,fontSize: 18)),
                 const ImageIcon(AssetImage(AppImages.ic_close),color: AppColors.primaryColor,)
                ],
              ),
              const SizedBox(height: 15,),

               MySeparator(height: 1,color: AppColors.secondaryColor),
              const SizedBox(height: 15,),
              Text('Are you sure to subscribe this plan?',style: GoogleFonts.poppins(color: Colors.black,fontWeight: FontWeight.bold,)),
              const SizedBox(height: 15,),
              Text('If you subscribe to this one. your old limitation will \nreset according to this package',style: GoogleFonts.poppins(color: Colors.black,fontWeight: FontWeight.normal,)),
              const SizedBox(height: 15,),
               MySeparator(height: 1,color: AppColors.secondaryColor),
              const SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  MySimpleBotton(name: 'Yes', width: 75,color: AppColors.primaryColor, height: 30,onclick: ()=>Navigator.of(context).pop(true),),
                  const SizedBox(width: 15,),
                  MySimpleBotton(name: 'No',color: AppColors.secondaryColor, width: 75, height: 30,onclick: ()=>Navigator.of(context).pop(false)),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
