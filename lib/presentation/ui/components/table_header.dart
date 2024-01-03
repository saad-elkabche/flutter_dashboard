import 'package:ayoub_baali/core/constants/app_color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';



class TableHeader extends StatelessWidget {
  List<String> items;

  TableHeader({required this.items});

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: double.infinity,
      height: 50,
      decoration:BoxDecoration(
          color: AppColors.primaryColor,
          borderRadius: BorderRadius.circular(8)
      ) ,
      child: Row(
        children:List.generate(items.length, (index) => item(items.elementAt(index),Colors.white))
      ),
    );
  }

  Widget item(String name,Color textColor){
    return Expanded(child:
        Center(child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: FittedBox(child: Text('$name',style: GoogleFonts.poppins(color: textColor,fontWeight: FontWeight.bold),)),
        ),)
    );
  }

}
