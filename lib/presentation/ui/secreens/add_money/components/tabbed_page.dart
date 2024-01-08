import 'package:ayoub_baali/core/constants/app_color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class TabedPage extends StatelessWidget {
   List<String> items;
   int currentIndex;
   void Function(int)? onClick;

   TabedPage({required this.items,this.onClick,required this.currentIndex});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children:List.generate(items.length, (index) => item(items.elementAt(index),index==currentIndex,()=>onClick?.call(index))),
      ),
    );
  }

  Widget item(String name ,bool isCurrent,void Function() onclick ){
    return GestureDetector(
      onTap:onclick,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(name,style: GoogleFonts.poppins(color: Colors.black,fontWeight:FontWeight.bold ),),
            SizedBox(height: 2,),
            if(isCurrent)
            Container(
              width: 100,
              height: 1.5,
              color: AppColors.secondaryColor,
            )
          ],
        ),
      ),
    );
  }


}
