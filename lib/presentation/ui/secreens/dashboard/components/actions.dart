
import 'package:ayoub_baali/core/constants/app_color.dart';
import 'package:ayoub_baali/core/constants/app_images_icons.dart';
import 'package:flutter/material.dart';




class ActionWeb extends StatelessWidget {
  String name;
  String icon;
  double height;
  VoidCallback? onClick;

  ActionWeb({required this.name,this.onClick,required this.height,required this.icon});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick,
      child: Container(
        height: height*0.07,
        width: 155,
        constraints: const BoxConstraints(
          minHeight: 50,
          maxHeight: 65
        ),
        margin: EdgeInsets.symmetric(horizontal: 8,vertical: 5),
        decoration: BoxDecoration(
            color: AppColors.primaryColor,
            borderRadius: BorderRadius.circular(10)
        ),
        child: Row(
          children: [
            Container(
              height: double.infinity,
              width: 70,
              decoration: BoxDecoration(
                  color: AppColors.secondaryColor,
                  borderRadius: BorderRadius.circular(10)
              ),
              child: ImageIcon(AssetImage(icon),color: Colors.white,),
            ),
            Expanded(child: Center(child: Text("$name",style: TextStyle(color: Colors.white),)))
          ],
        ),
      ),
    );
  }



}
