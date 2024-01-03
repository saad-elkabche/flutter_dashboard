import 'package:ayoub_baali/core/constants/app_color.dart';
import 'package:ayoub_baali/core/constants/app_images_icons.dart';
import 'package:ayoub_baali/core/constants/enums.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';




class PlanDetails extends StatelessWidget {
  SecreenSize size;
  PlanDetails({required this.size}) ;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: size==SecreenSize.large?CrossAxisAlignment.start:CrossAxisAlignment.center,
      children: [
        Column(
          crossAxisAlignment:size==SecreenSize.large? CrossAxisAlignment.start:CrossAxisAlignment.center,
          children: [
            Text('Flexible Plan',style: GoogleFonts.poppins(color: AppColors.primaryColor,fontWeight: FontWeight.bold,fontSize: 18),),
            Container(
              width: 100,
              height: 1.5,
              color: AppColors.secondaryColor,
            )
          ],
        ),
        const SizedBox(height: 15,width: double.infinity,),
        Text('In this plan, your amount will be fixed for 24 months \nand you can earn up to 10% per  month with rewards and bonuses.',
          textAlign: size==SecreenSize.large?TextAlign.start:TextAlign.center,
          style: GoogleFonts.poppins(color: Colors.black,fontWeight: FontWeight.normal,),
        ),
        const SizedBox(height: 15,),
        size==SecreenSize.medium
            ?
            Column(
          children: [
            Row(
              children: [
                Expanded(child: Center(child: detail(r'Invest = 20$-10,000$'))),
                Expanded(child: Center(child: detail(r'Lock Perios = 01 day to 365 days'))),
              ],
            ),

            Row(
              children: [
                Expanded(child: Center(child: detail(r'Profit Ratio = up to 7% monthly'))),
                Expanded(child: Center(child: detail(r'Profit Ratio = upto 7% monthly'))),
              ],
            )
          ],
        )
            :
            Column(

              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                detail(r'Invest = 20$-10,000$'),
                detail(r'Profit Ratio = up to 7% monthly'),
                detail(r'Profit Ratio = up to 7% monthly'),
                detail(r'Profit Ratio = upto 7% monthly')
              ],
            )



      ],
    );
  }
  Widget detail(String detail){
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const ImageIcon(AssetImage(AppImages.ic_check),color: AppColors.secondaryColor,),
          const SizedBox(width: 15,),
          Text(detail,style: GoogleFonts.poppins(color: Colors.black,fontWeight: FontWeight.normal,)),
        ]
      ),
    );
  }
}
