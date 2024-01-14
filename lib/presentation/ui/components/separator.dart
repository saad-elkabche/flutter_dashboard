import 'package:flutter/material.dart';



class MySeparator extends StatelessWidget {
  final double height;
  final double dashWidth;
  final Color color;
  final Axis axe;


  MySeparator({ this.height = 1,this.dashWidth=3,this.axe=Axis.horizontal, this.color = Colors.black});



  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {

        final boxWidth = constraints.constrainWidth();

        final dashHeight = height;
        final boxHeight=constraints.constrainHeight();

        final dashCount =axe==Axis.horizontal?(boxWidth / (1.6 * dashWidth)).floor():(boxHeight/(1.6*dashWidth)).floor();
        return Flex(
          //verticalDirection: ,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          direction: axe,
          children: List.generate(dashCount, (_) {
            return SizedBox(
              width:axe==Axis.horizontal?dashWidth:dashHeight,
              height: axe==Axis.horizontal?dashHeight:dashWidth,
              child: DecoratedBox(
                decoration: BoxDecoration(color: color),
              ),
            );
          }),

        );
      },
    );
  }
}