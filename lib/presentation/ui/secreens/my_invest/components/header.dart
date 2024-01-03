import 'package:ayoub_baali/core/constants/app_color.dart';
import 'package:ayoub_baali/core/constants/enums.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';






class MyInvestHeader extends StatelessWidget {
  void Function(int)? onClick;
  int currentIndex;
  SecreenSize size;
  MyInvestHeader({this.onClick,required this.size,required this.currentIndex}) ;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if(size==SecreenSize.large)
       Expanded(
           flex: 1,
           child: Padding(
             padding: const EdgeInsets.only(left: 18.0),
             child: Text('History',style: GoogleFonts.poppins(color: Colors.black,fontWeight: FontWeight.bold),),
           )
       ),
       Expanded(flex:2,
           child: Row(
             mainAxisAlignment: size==SecreenSize.large?MainAxisAlignment.start:MainAxisAlignment.center,
             children: [
               GestureDetector(
                 onTap:  ()=>onClick?.call(0),
                 child: Column(
                   children: [
                     Text('Flexible',style: GoogleFonts.poppins(color: Colors.black,fontWeight: FontWeight.bold),),
                     if(currentIndex==0)
                     Container(width: 70,height: 1.5,color: AppColors.secondaryColor,)
                   ],
                 ),
               ),
               SizedBox(width: 40,),
               GestureDetector(
                 onTap: ()=>onClick?.call(1),
                 child: Column(
                   children: [
                     Text('Non-Flexible',style: GoogleFonts.poppins(color: Colors.black,fontWeight: FontWeight.bold),),
                     if(currentIndex==1)
                     Container(width: 90,height: 1.5,color: AppColors.secondaryColor,)
                   ],
                 ),
               )
             ],
           )
       )
      ],
    );
  }
}
