import 'package:ayoub_baali/core/constants/app_color.dart';
import 'package:ayoub_baali/core/constants/app_images_icons.dart';
import 'package:ayoub_baali/core/constants/enums.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:graphview/GraphView.dart';




class MyNode{
  int id;
  String name;
  SecreenSize size;
  bool  isPrimaryColor;

  MyNode({
    required this.id,
    required this.name,
    required this.size,
    required this.isPrimaryColor});


  Widget get nodeWidget{
    if(size==SecreenSize.large){
      return Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            //width: 100,
            padding: EdgeInsets.all(3),
            height: 30,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(3),
              border: Border.all(color: Colors.black,width: 0.9)
            ),
            child: Text(
              name,
              style: GoogleFonts.poppins(color: Colors.black,fontWeight: FontWeight.normal),
            ),
          ),
          Image.asset(
            this.isPrimaryColor?AppImages.img_node_primary_color:AppImages.img_node_secondary_color,
          fit: BoxFit.cover,
          )
        ],
      );
    }else{
      return Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            this.isPrimaryColor?AppImages.img_node_primary_color:AppImages.img_node_secondary_color,
            fit: BoxFit.cover,
          ),
          Container(
            height: 30,
            padding: EdgeInsets.all(3),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(3),
                border: Border.all(color: Colors.black,width: 0.9)
            ),
            child: Text(
              name,
              style: GoogleFonts.poppins(color: Colors.black,fontWeight: FontWeight.normal),
            ),
          ),
        ],
      );
    }
  }

  Node get node{
    return Node.Id(id);
  }

}


