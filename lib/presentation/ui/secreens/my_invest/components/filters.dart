import 'package:ayoub_baali/core/constants/app_color.dart';
import 'package:ayoub_baali/core/constants/enums.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class Filters extends StatelessWidget {
  SecreenSize size;

   Filters({required this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      margin: EdgeInsets.all(15),
      padding: EdgeInsets.symmetric(horizontal: 30),
      decoration: BoxDecoration(
        color: AppColors.primaryColor,
        borderRadius: BorderRadius.circular(10)
      ),
      child: Row(
        mainAxisAlignment: size==SecreenSize.large?MainAxisAlignment.start:MainAxisAlignment.spaceBetween,
        children: [
          if(size!=SecreenSize.large)
          Text('History',style: GoogleFonts.poppins(color: Colors.white,fontWeight: FontWeight.bold),),
          Row(
            children: [
              Text('Filters',style: GoogleFonts.poppins(color: Colors.white,fontWeight: FontWeight.bold),),
              SizedBox(width: 10,),
              Icon(Icons.filter_alt,color: AppColors.secondaryColor,)
            ],
          )
        ],
      ),
    );
  }
}
