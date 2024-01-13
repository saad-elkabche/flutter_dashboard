import 'dart:html';

import 'package:ayoub_baali/core/constants/app_color.dart';
import 'package:ayoub_baali/core/constants/enums.dart';
import 'package:ayoub_baali/presentation/ui/components/components.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';






class EarningChart extends StatelessWidget {
  double height;
  SecreenSize size;
  EarningChart({required this.height,required this.size});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding:  EdgeInsets.only(left: 18.0),
          child: Text("Earning Chart",style: TextStyle(fontWeight: FontWeight.bold),),
        ),
        const SizedBox(height: 10,),
        MainContainer(
          height: height,
            child:  Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Center(
                  child:  Column(
                    children: [
                      Expanded(
                        child: BarChart(
                          swapAnimationDuration: Duration(seconds: 2),

                          BarChartData(
                              backgroundColor: AppColors.scaffoldColor,
                              borderData: FlBorderData(
                                  show: false
                              ),

                              groupsSpace: 0,


                              gridData:  FlGridData(
                                drawVerticalLine: false,
                                getDrawingHorizontalLine: (val)=>const FlLine(color: Colors.black,strokeWidth: 0.5)
                              ),


                              titlesData: FlTitlesData(
                                //leftTitles:  const AxisTitles(sideTitles:SideTitles(showTitles: false) ),
                                rightTitles: const AxisTitles(sideTitles:SideTitles(showTitles: false) ),
                                topTitles:   const AxisTitles(sideTitles:SideTitles(showTitles: false) ),
                                  bottomTitles: AxisTitles(

                                      sideTitles: SideTitles(
                                          showTitles:true,
                                          getTitlesWidget: (val,titleMeta){
                                            String title=val.toString();


                                            switch(title){
                                              case '1':title+='st';
                                              break;
                                              case '2':title+='nd';
                                              break;
                                              case '3':title+='rd';
                                              break;
                                              default:
                                                title+='th';
                                            }

                                            title+=' day';




                                            return Text('$title');
                                          }
                                      )
                                  )
                              ),



                              barGroups: List.generate(7, (index) => barChartGroupData(10,
                                  size==SecreenSize.small
                                      ?
                                  10
                                      :
                                  size==SecreenSize.medium?22:14
                                  ,
                                  index+1
                              ))
                          ),
                        ),
                      ),

                      SizedBox(height: 10,),

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15.0),
                        child: Row(
                          mainAxisAlignment:MainAxisAlignment.spaceEvenly ,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(child: Center(child: chartKey(AppColors.primaryColor, 'Membership Earning'))),
                            Expanded(child: Center(child: chartKey(AppColors.secondaryColor, 'Non-flexi Earning'))),
                            Expanded(child: Center(child: chartKey(Colors.brown, 'Flexi Earning'))),
                          ],
                        ),
                      )


                    ],
                  )
              ),
            ),
        ),
      ],
    );
  }

  BarChartGroupData barChartGroupData(double toY,double barWidth,int x){
    return  BarChartGroupData(
        barsSpace: 0,
        x: x,
        barRods: [
          BarChartRodData(toY: toY,width: barWidth,color: AppColors.primaryColor,borderRadius: BorderRadius.zero),
          BarChartRodData(toY: toY,width: barWidth,color: AppColors.secondaryColor,borderRadius: BorderRadius.zero),
          BarChartRodData(toY: toY,width: barWidth,color: Colors.brown,borderRadius: BorderRadius.zero),
        ]
    );
  }

  Widget chartKey(Color color,String name){
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 20,
          height: 20,
          decoration: BoxDecoration(
              color: color,
            borderRadius: BorderRadius.circular(1.5)
          ),
        ),
        const SizedBox(width: 7,),
        Expanded(child: Text(name,overflow: TextOverflow.ellipsis,style: GoogleFonts.poppins(fontWeight:FontWeight.w400,fontSize: size==SecreenSize.small?10:14 ),))
      ],
    );
  }

}
