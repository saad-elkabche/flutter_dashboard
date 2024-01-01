import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';



class EmptyWidget extends StatelessWidget {
  String emptyMsg;
  double width;

   EmptyWidget({
    required this.emptyMsg,
     this.width=200
});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          //Image.asset(AppImages.img_empty,fit: BoxFit.cover,width: width),
          const SizedBox(height: 10,),
          Text(emptyMsg,style: GoogleFonts.acme(fontSize: 17),textAlign: TextAlign.center,)
        ],
      ),
    );
  }
}
