import 'package:ayoub_baali/core/constants/enums.dart';
import 'package:flutter/material.dart';



class TemplateState extends InheritedWidget{
  final SecreenSize size;
  double width;
  double height;
  GlobalKey<ScaffoldState> sacaffoldState;


  TemplateState({required super.child,required this.sacaffoldState,required this.size,required this.height,required this.width});



  static SecreenSize sizeOf(BuildContext context)=>
      context.dependOnInheritedWidgetOfExactType<TemplateState>()!.size;

  static double heightOf(BuildContext context)=> context.dependOnInheritedWidgetOfExactType<TemplateState>()!.height;

  static double widthOf(BuildContext context)=> context.dependOnInheritedWidgetOfExactType<TemplateState>()!.width;


  static GlobalKey<ScaffoldState> scaffoldStateOf(BuildContext context)
  =>context.dependOnInheritedWidgetOfExactType<TemplateState>()!.sacaffoldState;


  @override
  bool updateShouldNotify(covariant TemplateState oldWidget) {
    return ( (size!=oldWidget.size ) || (width!=oldWidget.width) || (height!=oldWidget.height)  );
  }

}