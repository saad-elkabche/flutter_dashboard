
import 'package:ayoub_baali/core/constants/app_color.dart';
import 'package:ayoub_baali/core/constants/enums.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';



class MyHeader extends StatelessWidget {
  SecreenSize size;
  MyHeader({required this.size}) ;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: kIsWeb?Colors.transparent:AppColors.primaryColor,
      title: Text('Dashboard',style: Theme.of(context).textTheme.titleMedium!.copyWith(fontSize: 25,fontWeight: FontWeight.bold,color: kIsWeb?Colors.black:Colors.white)),
      centerTitle:!kIsWeb,
      elevation: 0,
      toolbarHeight: 80,
      leading:kIsWeb?null:Icon(Icons.home,color:AppColors.secondaryColor,size: 35,),
      actions: [
        if(kIsWeb)
        Padding(
          padding: const EdgeInsets.only(right: 18.0),
          child: Row(
            children: [
              Icon(Icons.supervised_user_circle,color: AppColors.primaryColor,size: 38,),
              const SizedBox(width: 10,),
              Text('EBP User',style: Theme.of(context).textTheme.titleMedium!.copyWith(color: Colors.black,fontWeight: FontWeight.bold),)
            ],
          ),
        ),
        if(!kIsWeb)
        const Padding(
          padding: const EdgeInsets.only(right: 10.0),
          child: Icon(Icons.dashboard,color: AppColors.secondaryColor,size: 35,),
        )
      ],
    );
  }
}
