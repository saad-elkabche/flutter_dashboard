import 'dart:math';

import 'package:ayoub_baali/core/constants/app_color.dart';
import 'package:ayoub_baali/core/constants/enums.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';



class OrderBy extends StatelessWidget {

  SecreenSize size;
  String name;
  List<String> items;
  OrderBy({required this.size,required this.items,required this.name}) ;



  bool isExpanded=false;

  final double largeWidth=170;

  final double smallWidth=130;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(name,style: GoogleFonts.poppins(color: Colors.black87,fontWeight: FontWeight.bold),),
        SizedBox(height: 10,),
        Container(
          clipBehavior: Clip.hardEdge,
          width:size==SecreenSize.large?largeWidth: smallWidth,
          height: 160,
          decoration: BoxDecoration(
            color: AppColors.primaryColor,
            borderRadius: BorderRadius.circular(5)
          ),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.only(right: 5),
                  width: size==SecreenSize.large?largeWidth: smallWidth,
                  height: 30,
                  decoration:const  BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(bottomRight: Radius.circular(5),bottomLeft: Radius.circular(5))
                  ),
                  alignment: Alignment.centerRight,
                  child: Transform.rotate(angle:pi/2,child: Icon(Icons.arrow_forward_ios_outlined,color: AppColors.primaryColor,size: 15,)),
                ),
                ...List.generate(items.length, (index) => item(items.elementAt(index),index!=(items.length-1)))

              ],
            ),
          ),
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

