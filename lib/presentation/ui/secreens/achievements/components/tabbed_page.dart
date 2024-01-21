import 'package:ayoub_baali/core/constants/app_color.dart';
import 'package:ayoub_baali/core/constants/enums.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';





class TabbedWidget extends StatelessWidget {
  
  void Function(int) onSelect;
  int currentTab;
  SecreenSize size;
  
  TabbedWidget({required this.currentTab,required this.size,required this.onSelect}) ;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 45,
      margin: const EdgeInsets.symmetric(horizontal: 15),
      padding: const EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColors.primaryColor
      ),
      child: Row(
        mainAxisAlignment:size!=SecreenSize.large?MainAxisAlignment.center:MainAxisAlignment.start,
        children: [
          item('Achieved', 0),
          item('UpComing', 1),
        ],
      ),
    );
  }
  Widget item(String name,index){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap:()=> onSelect.call(index),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Text(name,style: GoogleFonts.poppins(color: Colors.white),),

            if(index==currentTab)
              Container(
                width: 70,
                height: 2,
                margin: const EdgeInsets.only(top: 3),
                color: AppColors.secondaryColor,
              )
          ],
        ),
      ),
    );
  }
  
}
