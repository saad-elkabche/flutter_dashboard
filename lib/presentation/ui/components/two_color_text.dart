import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';



class TwoColorText extends StatelessWidget {

  double fontSize;
  String textOne;
  String textTwo;
  Color colorOne;
  Color colortwo;
  TextAlign textAlign;



  TwoColorText({
    required this.fontSize,
    required this.textOne,
    required this.textTwo,
    required this.colorOne,
    required this.colortwo,
    this.textAlign=TextAlign.start
  });

  @override
  Widget build(BuildContext context) {
    return  Text.rich(
      textAlign:textAlign,
        TextSpan(
            text: '$textOne',
            style: GoogleFonts.poppins(fontSize: fontSize,color: colorOne,fontWeight: FontWeight.bold),
            children: [
              TextSpan(
                text: '$textTwo',
                style: GoogleFonts.poppins(fontSize: fontSize,color: colortwo,fontWeight: FontWeight.bold),
              )
            ]
        )
    );
  }
}
