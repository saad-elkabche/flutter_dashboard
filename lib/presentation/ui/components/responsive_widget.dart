import 'package:flutter/material.dart';



class ResponsiveWidget extends StatelessWidget {
  final Widget field1,field2;
  final double width,minWidth;
  double verticalSpacing;
  double horizontalSpacing;
  bool isEqualColumns;
  bool isReverse;








   ResponsiveWidget({
    required this.field1,
     required this.field2,
     required this.width,
     this.isEqualColumns=false,
     required this.minWidth,
    this.horizontalSpacing=0,
     this.verticalSpacing=0,
     this.isReverse=false
});
  @override
  Widget build(BuildContext context) {
    Widget fields;
    if(width<=minWidth){
      fields=Column(

        children:isReverse
            ? [
          isEqualColumns?Expanded(child: field2):field2,
          SizedBox(height: verticalSpacing,width: horizontalSpacing,),
          isEqualColumns?Expanded(child: field1):field1,
        ]
            : [
          isEqualColumns?Expanded(child: field1):field1,
          SizedBox(height: verticalSpacing,width: horizontalSpacing,),
          isEqualColumns?Expanded(child: field2):field2
        ],
      );
    }else{
      fields=Row(
        children: [
          Expanded(child: field1),
          SizedBox(height: verticalSpacing,width: horizontalSpacing,),
          Expanded(child: field2)
        ],
      );
    }

    return fields;


  }
}
