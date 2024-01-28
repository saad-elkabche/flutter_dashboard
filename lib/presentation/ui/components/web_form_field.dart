import 'package:ayoub_baali/core/constants/app_color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';






class WebFormField extends StatefulWidget {


  Color hintColor;
  Color labelColor;
  Color activeBorderColor;
  Color borderColor;
  Color? fillColor;

  double fontSizeLabel;
  double fontSizeHint;
  double fontSizetext;
  double borderRadius;
  double borderWidth;

  FontWeight fontWeightLabel;
  FontWeight fontWeightHint;
  FontWeight fontWeightText;

  String label;
  String hint;

  Widget? leading;
  Widget? suffix;

  bool isPassWord;




  TextEditingController? controller;




  WebFormField({
   required this.hint,
   required this.label,
    this.leading,
    this.suffix,
    this.borderColor=const Color(0xff0B3167),
    this.activeBorderColor=const Color(0xffFE6D00),
    this.hintColor=const Color(0xff0B3167),
    this.labelColor=const Color(0xff0B3167),
    this.fontWeightLabel=FontWeight.bold,
    this.fontWeightHint=FontWeight.normal,
    this.fontSizeHint=12,
    this.fontSizeLabel=15,
    this.fontSizetext=14,
    this.fontWeightText=FontWeight.w500,
    this.borderRadius=10,
    this.borderWidth=1.5,
    this.isPassWord=false,
    this.controller,
    this.fillColor
}) ;

  @override
  State<WebFormField> createState() => _WebFormFieldState();
}

class _WebFormFieldState extends State<WebFormField> {

  late bool hidePass;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    hidePass=widget.isPassWord;
  }


  @override
  Widget build(BuildContext context) {
    return widget.label.isNotEmpty
        ?
    Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        Text(widget.label,style: GoogleFonts.poppins(color: widget.labelColor,fontSize: widget.fontSizeLabel,fontWeight: widget.fontWeightLabel),),
        SizedBox(height: 10,),
        field()

      ],
    )
        :field();
  }
  Widget field()=>TextFormField(
    style: GoogleFonts.poppins(fontWeight: widget.fontWeightText,fontSize: widget.fontSizetext),
    obscureText: hidePass,
    controller: widget.controller,
    decoration: InputDecoration(
      fillColor: widget.fillColor,
      filled: widget.fillColor!=null,
      contentPadding: EdgeInsets.symmetric(horizontal: 5,vertical: 3),
      hintText: widget.hint,
      hintStyle:GoogleFonts.poppins(color: widget.hintColor,fontSize: widget.fontSizeHint,fontWeight: widget.fontWeightHint),
      prefixIcon: widget.leading,
      suffixIcon:GestureDetector(
          onTap: onSuffixTap,
          child: widget.suffix ?? const SizedBox(width: 0,height: 0,)) ,
      enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(widget.borderRadius),
          borderSide: BorderSide(color: widget.borderColor,width: widget.borderWidth)
      ),
      focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(widget.borderRadius),
          borderSide: BorderSide(color: widget.activeBorderColor,width: widget.borderWidth)
      ),

    ),
  );

  void onSuffixTap() {
    if(widget.isPassWord){
      setState(() {
        hidePass=!hidePass;
        print(hidePass);
      });
    }
  }
}
