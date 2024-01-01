
import 'package:ayoub_baali/core/constants/app_color.dart';
import 'package:ayoub_baali/core/constants/app_images_icons.dart';
import 'package:flutter/material.dart';




class ActionWeb extends StatelessWidget {
  String name;
  String icon;

  ActionWeb({required this.name,required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 155,
      margin: EdgeInsets.symmetric(horizontal: 8,vertical: 5),
      decoration: BoxDecoration(
          color: AppColors.primaryColor,
          borderRadius: BorderRadius.circular(10)
      ),
      child: Row(
        children: [
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                color: AppColors.secondaryColor,
                borderRadius: BorderRadius.circular(10)
            ),
            child: ImageIcon(AssetImage(icon),color: Colors.white,),
          ),
          Expanded(child: Center(child: Text("$name",style: TextStyle(color: Colors.white),)))
        ],
      ),
    );
  }



}
