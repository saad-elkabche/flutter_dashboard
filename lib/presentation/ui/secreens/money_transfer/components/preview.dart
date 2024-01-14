

import 'package:ayoub_baali/core/constants/app_color.dart';
import 'package:ayoub_baali/core/constants/enums.dart';
import 'package:ayoub_baali/presentation/ui/components/components.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class Preview extends StatelessWidget {
  SecreenSize size;
  double height;
   Preview({required this.size,required this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
        clipBehavior: Clip.hardEdge,
        height: height,

        margin: EdgeInsets.symmetric(horizontal: 8),
        decoration: BoxDecoration(
          color: AppColors.scaffoldColor,
          borderRadius: BorderRadius.circular(15),
        ),
        child:Column(
          children: [


            if(size==SecreenSize.large)
              header('Preview'),

            SizedBox(height: 20,),
            if(size!=SecreenSize.large)
            Text('Preview',style: GoogleFonts.poppins(color: AppColors.primaryColor,fontSize: 18,fontWeight: FontWeight.bold),),
            SizedBox(height: 40,),
            item('Sending Amount','0 USDt'),
            item('Fees','0.0000 USDT'),
            item('Recipient Will Get','0.0000 USDT'),
            item('Pay in Total','0.0000 USDT'),

          ],
        )
    );
  }
  Widget header(String name){
    return Container(
      width: double.infinity,
      height: 45,
      color: AppColors.primaryColor,
      child: Center(
        child: Text('$name',style: GoogleFonts.poppins(color: Colors.white,fontWeight:FontWeight.bold),),
      ),
    );
  }

  Widget item(String name,String value,[bool withDvider=true]){
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(child: Text(name,textAlign: TextAlign.start,style: GoogleFonts.poppins(color: Colors.black,fontWeight: FontWeight.bold),)),
              Expanded(child: Text(value,textAlign: TextAlign.end,style: GoogleFonts.poppins(color: Colors.black),))
            ],
          ),
          SizedBox(height: 12),
          if(withDvider)
          Container(
            width: double.infinity,
            height: 1.5,
            color: size==SecreenSize.large?AppColors.primaryColor:AppColors.secondaryColor,
          ),
          SizedBox(height: 8),
        ],
      ),
    );
  }
}
