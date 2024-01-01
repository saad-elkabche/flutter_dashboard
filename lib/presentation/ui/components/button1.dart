import 'package:ayoub_baali/core/constants/app_color.dart';
import 'package:flutter/material.dart';




class MySimpleBotton extends StatelessWidget {
  String name;
  Color color;
  double fontSize;
  double width;
  double height;
  void Function()? onclick;
  MySimpleBotton({required this.name,required this.width,required this.height,this.onclick,this.color=AppColors.secondaryColor,this.fontSize=14});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: onclick,

      style: ElevatedButton.styleFrom(fixedSize: Size(width, height),backgroundColor: color,shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(7))),
    child: Text(name,style: TextStyle(color: Colors.white,fontSize: fontSize),)
    );

  }
}
