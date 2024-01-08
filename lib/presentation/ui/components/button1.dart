import 'package:ayoub_baali/core/constants/app_color.dart';
import 'package:flutter/material.dart';




class MySimpleBotton extends StatelessWidget {
  String name;
  Color color;
  double fontSize;
  double width;
  double height,borderRadius;
  void Function()? onclick;
  MySimpleBotton({required this.name,this.borderRadius=7,required this.width,required this.height,this.onclick,this.color=AppColors.secondaryColor,this.fontSize=14});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: onclick,

      style: ElevatedButton.styleFrom(fixedSize: Size(width, height),backgroundColor: color,shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(borderRadius))),
    child: Text(name,style: TextStyle(color: Colors.white,fontSize: fontSize),)
    );

  }
}
