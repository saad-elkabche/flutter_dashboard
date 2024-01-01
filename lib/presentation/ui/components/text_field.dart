/*

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iptv_player/core/constants/app_colors.dart';



class MyTextField extends StatefulWidget {
  String label;
  String? hint;
  IconData? icon;
  double borderRadius;
  TextEditingController controller;
  double? width;
  bool isLarge;
  bool isRTL;
  bool isPassword;
  TextInputType textInputType;
  String? Function(String?)? validator;
  void Function(String?)? onChange;


  Color mainColor;
  Color secondColor;


  Color textSelectionColor;



  */
/*TextSelectionThemeData(
              cursorColor: AppColors.primaryColor,
              selectionColor: AppColors.primaryColor,
              selectionHandleColor: AppColors.primaryColor
            ),*//*





  MyTextField({
    required this.label,
    this.icon,
    required this.controller,
    this.width,
    this.isLarge=false,
    this.hint,
    this.isRTL=false,
    this.textInputType=TextInputType.text,
    this.validator,
    this.onChange,
    this.isPassword=false,
    this.mainColor=AppColors.primaryColorForTextFields,
    this.secondColor=AppColors.secondaryColorForTextFields,
    this.borderRadius=14.0,
    this.textSelectionColor=AppColors.primaryColor
  });

  @override
  State<MyTextField> createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  //final widgetborderRadius=14.0;
  late bool _showContent;
  final TextStyle textStyle=GoogleFonts.acme();


  @override
  void initState() {
    super.initState();
    _showContent=widget.isPassword;
  }


  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        textSelectionTheme: TextSelectionThemeData(
        selectionColor: widget.textSelectionColor,
        selectionHandleColor: widget.textSelectionColor,
      ),
      ),
      child: Padding(
        padding:const  EdgeInsets.only(
          top: 5,
          right: 20,
          left: 20
        ),
        child: TextFormField(
          onChanged: (value){
            widget.onChange?.call(value);
            setState(() {
            });
          },

          obscureText: _showContent,
          validator: widget.validator,
          keyboardType: widget.textInputType,
          textDirection: widget.isRTL?TextDirection.rtl:TextDirection.ltr,
          maxLines: widget.isLarge?4:1,
          controller: widget.controller,
          style: GoogleFonts.aBeeZee(),
          decoration:_decoration(),
          cursorColor: AppColors.primaryColor,
        ),
      ),
    );
  }


  InputDecoration _decoration()=>InputDecoration(
    constraints: BoxConstraints(
      maxHeight: 45
    ),
    hintStyle:  TextStyle(color: widget.secondColor,fontSize: 17) ,
    contentPadding: EdgeInsets.only(
        left: 15,
        right: 15,
        top: widget.isPassword
            ?widget.controller.text.isNotEmpty?3:15
            :15.0,
        bottom:  widget.isPassword
            ?widget.controller.text.isNotEmpty?3:15
            :15.0,
    ),

    hintTextDirection:  widget.isRTL?TextDirection.rtl:TextDirection.ltr,
    hintText: widget.hint,
    alignLabelWithHint: true,
    floatingLabelAlignment: FloatingLabelAlignment.start,
    label: Text(widget.label,style: textStyle.copyWith(color:widget.mainColor,fontSize: 22),),
    prefixIcon: Icon(widget.icon,color:widget.mainColor),
    floatingLabelBehavior: FloatingLabelBehavior.always,
    suffix: widget.isPassword && widget.controller.text.isNotEmpty?_showPasswordWidget():null,
    border:   OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(widget.borderRadius)),
    ),
    enabledBorder:   OutlineInputBorder(
        borderRadius:  BorderRadius.all(Radius.circular(widget.borderRadius)),
        borderSide: BorderSide(color:widget.secondColor,width: 1.8)
    ),
    errorBorder: OutlineInputBorder(
        borderRadius:  BorderRadius.all(Radius.circular(widget.borderRadius)),
        borderSide: BorderSide(color:widget.secondColor,width: 1.8),

    ),
    focusedErrorBorder:  OutlineInputBorder(
      borderRadius:  BorderRadius.all(Radius.circular(widget.borderRadius)),
      borderSide: BorderSide(color:widget.mainColor,width: 1.8),

    ),
    errorStyle: textStyle.copyWith(color: Colors.redAccent),
    focusedBorder:  OutlineInputBorder(
        borderRadius:  BorderRadius.all(Radius.circular(widget.borderRadius)),
        borderSide: BorderSide(color:widget.mainColor,width: 1.8),

    ),
  );

  Widget _showPasswordWidget(){
    return IconButton(
        icon: Icon(
          _showContent
              ?FontAwesomeIcons.eyeLowVision
              :FontAwesomeIcons.eye,
          size: 20,
          color: AppColors.primaryColor,
        ),
      onPressed: (){
          setState(() {
            _showContent=!_showContent;
          });
      },
    );
  }

}
*/
