import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/constants/app_color.dart';



class MyCustomButton extends StatelessWidget {
  String name;
  IconData? icon;
  Widget? iconWidget;
  Color color,textColor,iconColor;
  double width,fontSize,margin;
  void Function()? onClick;
  double borderRadius,elevation,height;
  Alignment alignment;

  MyCustomButton({
    required this.name,
    this.width=double.infinity,
    this.icon,
    this.color=AppColors.primaryColor,
    this.onClick,
    this.textColor=Colors.white,
    this.borderRadius=8,
    this.elevation=1,
    this.height=45,
    this.iconColor=Colors.white,
    this.alignment=Alignment.center,
    this.iconWidget,
    this.fontSize=15,
    this.margin=15

});

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.symmetric(horizontal: margin),
    child: Center(
      child: Align(
        alignment:alignment ,
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minWidth: width,
            maxWidth: width,
            minHeight: height,
            maxHeight: height
          ),
          child: icon!=null || iconWidget!=null
              ?ElevatedButton.icon(onPressed:()=>onClick?.call() , icon:icon!=null? Icon(icon,color: iconColor,):iconWidget!, label:_getText() ,style: _getStyle(),)
              :ElevatedButton(onPressed: ()=>onClick?.call(),style: _getStyle(),child: _getText(),),
        ),
      )
    )
    );
  }



 ButtonStyle _getStyle()=>ElevatedButton.styleFrom(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(borderRadius)
    ),
    backgroundColor: color,
    elevation: elevation,
    shadowColor: AppColors.primaryColor,

  );
  Widget _getText()=>Text(name,style: GoogleFonts.acme(color: textColor,fontSize: fontSize),);
}


