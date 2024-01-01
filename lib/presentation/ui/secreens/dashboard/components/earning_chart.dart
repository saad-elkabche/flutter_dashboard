import 'package:ayoub_baali/core/constants/app_color.dart';
import 'package:ayoub_baali/presentation/ui/components/components.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';






class EarningChart extends StatelessWidget {
  double height;
  EarningChart({required this.height});

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
                  child:  ConstrainedBox(
                    constraints:  BoxConstraints(
                        maxWidth: 500,
                        maxHeight: height
                    ),
                    child: BarChart(
                      BarChartData(
                          backgroundColor: AppColors.scaffoldColor,
                          borderData: FlBorderData(
                              show: false
                          ),
                          groupsSpace: 0,
                          barGroups: [
                            BarChartGroupData(
                                barsSpace: 0,
                                x: 1,
                                barRods: [
                                  BarChartRodData(toY: 10,width: 12,color: AppColors.primaryColor,borderRadius: BorderRadius.zero),
                                  BarChartRodData(toY: 10,width: 12,color: AppColors.secondaryColor,borderRadius: BorderRadius.zero),
                                  BarChartRodData(toY: 10,width: 12,color: Colors.brown,borderRadius: BorderRadius.zero),
                                ]
                            ),
                            BarChartGroupData(
                                barsSpace: 0,

                                x: 2,
                                barRods: [
                                  BarChartRodData(toY: 10,width: 12,color: AppColors.primaryColor,borderRadius: BorderRadius.zero),
                                  BarChartRodData(toY: 10,width: 12,color: AppColors.secondaryColor,borderRadius: BorderRadius.zero),
                                  BarChartRodData(toY: 10,width: 12,color: Colors.brown,borderRadius: BorderRadius.zero),
                                ]
                            ),
                            BarChartGroupData(
                                barsSpace: 0,

                                x: 3,
                                barRods: [
                                  BarChartRodData(toY: 10,width: 12,color: AppColors.primaryColor,borderRadius: BorderRadius.zero),
                                  BarChartRodData(toY: 10,width: 12,color: AppColors.secondaryColor,borderRadius: BorderRadius.zero),
                                  BarChartRodData(toY: 10,width: 12,color: Colors.brown,borderRadius: BorderRadius.zero),
                                ]
                            ),
                            BarChartGroupData(
                                barsSpace: 0,

                                x: 4,
                                barRods: [
                                  BarChartRodData(toY: 10,width: 12,color: AppColors.primaryColor,borderRadius: BorderRadius.zero),
                                  BarChartRodData(toY: 10,width: 12,color: AppColors.secondaryColor,borderRadius: BorderRadius.zero),
                                  BarChartRodData(toY: 10,width: 12,color: Colors.brown,borderRadius: BorderRadius.zero),
                                ]
                            ),
                            BarChartGroupData(
                                barsSpace: 0,

                                x: 5,
                                barRods: [
                                  BarChartRodData(toY: 10,width: 12,color: AppColors.primaryColor,borderRadius: BorderRadius.zero),
                                  BarChartRodData(toY: 10,width: 12,color: AppColors.secondaryColor,borderRadius: BorderRadius.zero),
                                  BarChartRodData(toY: 10,width: 12,color: Colors.brown,borderRadius: BorderRadius.zero),
                                ]
                            ),
                            BarChartGroupData(
                                barsSpace: 0,
                                x: 6,
                                barRods: [
                                  BarChartRodData(toY: 10,width: 12,color: AppColors.primaryColor,borderRadius: BorderRadius.zero),
                                  BarChartRodData(toY: 10,width: 12,color: AppColors.secondaryColor,borderRadius: BorderRadius.zero),
                                  BarChartRodData(toY: 10,width: 12,color: Colors.brown,borderRadius: BorderRadius.zero),
                                ]
                            ),

                          ]
                      ),
                    ),
                  )
              ),
            ),
        ),
      ],
    );
  }
}
