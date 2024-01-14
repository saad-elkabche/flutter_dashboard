import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class MyTextFormField extends StatelessWidget {
  String hint;
  double hintFontSize;
  bool isBoldHint;
  TextInputType textInputType;

   MyTextFormField({required this.hint,this.textInputType=TextInputType.text,this.hintFontSize=10,this.isBoldHint=true});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: GoogleFonts.poppins(fontWeight: FontWeight.w600),
        keyboardType:textInputType ,
        decoration:  InputDecoration(
      hintText:hint,
      contentPadding: EdgeInsets.only(left: 10,bottom: 5),

        hintStyle: GoogleFonts.poppins(color: Colors.black,fontSize: hintFontSize,fontWeight:isBoldHint?FontWeight.bold:FontWeight.normal),
        border: InputBorder.none,
      enabledBorder: InputBorder.none,
      focusedBorder: InputBorder.none,
      focusedErrorBorder: InputBorder.none
      )
    );
  }
}
