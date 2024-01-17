import 'package:ayoub_baali/core/constants/enums.dart';
import 'package:flutter/material.dart';



class WebTemplateState extends InheritedWidget{

  SecreenSize size;
  double width;
  double height;

  Widget header;




  static SecreenSize sizeOf(BuildContext context)=>
  context.dependOnInheritedWidgetOfExactType<WebTemplateState>()!.size;


  static double widthOf(BuildContext context)=>
      context.dependOnInheritedWidgetOfExactType<WebTemplateState>()!.width;

  static double heightOf(BuildContext context)=>
      context.dependOnInheritedWidgetOfExactType<WebTemplateState>()!.height;

  static Widget headerOf(BuildContext context)=>
  context.dependOnInheritedWidgetOfExactType<WebTemplateState>()!.header;







  WebTemplateState({required this.width,required this.header,required this.size,required this.height,required super.child});

  @override
  bool updateShouldNotify(covariant WebTemplateState oldWidget) {
    return (  (size!=oldWidget.size) || (width!=oldWidget.width)  || (height!=oldWidget.height) );

  }

}