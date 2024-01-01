import 'package:ayoub_baali/core/constants/app_color.dart';
import 'package:flutter/material.dart';



class MainContainer extends StatelessWidget {
  Widget child;
  double? height;

  MainContainer({required this.child,this.height}) ;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 7),
      height: height,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
          color: AppColors.scaffoldColor,
          borderRadius: BorderRadius.circular(20),
          boxShadow: const[
            BoxShadow(color: Colors.grey,offset: Offset(3,3),blurRadius: 6)
          ]
      ),
      child: child,
    );
  }
}
