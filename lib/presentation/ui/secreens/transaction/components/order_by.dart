import 'dart:math';

import 'package:ayoub_baali/core/constants/app_color.dart';
import 'package:ayoub_baali/core/constants/enums.dart';
import 'package:ayoub_baali/presentation/ui/components/drop_down_list.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';



class OrderBy extends StatelessWidget {

  SecreenSize size;
  String name;
  List<String> items;
  OrderBy({required this.size,required this.items,required this.name}) ;



  bool isExpanded=false;

  final double largeWidth=175;

  final double smallWidth=160;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(name,style: GoogleFonts.poppins(color: Colors.black87,fontWeight: FontWeight.bold),),
        SizedBox(height: 10,),
        Container(
          padding: EdgeInsets.only(right: 5),
          width: size==SecreenSize.large?largeWidth: smallWidth,
          height: 35,
          decoration:const  BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(bottomRight: Radius.circular(5),bottomLeft: Radius.circular(5))
          ),
          child:DropDownList(
            items: items,
            hint: '',
            dividerColor: AppColors.secondaryColor,
            color: AppColors.primaryColor,
            borderColor: size==SecreenSize.small?AppColors.primaryColor:Colors.white,
          ) ,
        ),
      ],
    );
  }
  Widget item(String name,bool divider){
    return Padding(
      padding: EdgeInsets.only(top: 8,left: 4),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(name,style: GoogleFonts.poppins(color: Colors.white,fontWeight: FontWeight.normal),),
          if(divider)
          Container(
            width: smallWidth*0.8,
            height: 1.5,
            color: AppColors.secondaryColor,
          )
        ],
      ),
    );
  }
}

