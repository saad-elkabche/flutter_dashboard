
import 'package:ayoub_baali/core/constants/app_color.dart';
import 'package:ayoub_baali/core/constants/enums.dart';

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
//import 'package:syncfusion_flutter_charts/charts.dart';



class Charts extends StatelessWidget {
  late SecreenSize size;

   Charts({required this.size}) ;

  @override
  Widget build(BuildContext context) {
    return size==SecreenSize.large
        ?Row(
      children: [
        Expanded(flex :2,child: statisticsCharts()),
        Expanded(flex:3,child: earningCharts())
      ],
    )
        :Column(
      children: [
        SizedBox(height: 40,),
        statisticsCharts2(),
        SizedBox(height: 40,),
        earningCharts()
      ],
    );
  }
  Widget container(Widget child,[double? height=null]){
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15),
      height: height,
      padding: EdgeInsets.only(top: 10),
      decoration: BoxDecoration(
          color: AppColors.scaffoldColor,
          borderRadius: BorderRadius.circular(20),
          boxShadow: const[
            BoxShadow(color: Colors.grey,offset: Offset(3,3),blurRadius: 6)
          ]
      ),
      child: child,
    );
  }

  Widget earningCharts() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("       earning Chart",style: TextStyle(fontWeight: FontWeight.bold),),
        SizedBox(height: 10,),
        container(
           Center(
              child:  ConstrainedBox(
                constraints: const BoxConstraints(
                    maxWidth: 500,
                    maxHeight: 200
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
                        )
                      ]
                  ),
                ),
              )
          ),
        ),
      ],
    );
  }

  Widget statisticsCharts() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("     Statistics",style: TextStyle(fontWeight: FontWeight.bold),),
        container(
          Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(15.0),
                    child:  CircularPercentIndicator(
                      radius: 60.0,
                      lineWidth: 5.0,
                      percent: 0.85,
                      linearGradient:const LinearGradient(
                        colors: [
                          AppColors.primaryColor,
                          AppColors.secondaryColor
                        ]
                      ),
                      center:  Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Next Rank',style: GoogleFonts.acme(fontSize: 17,fontWeight: FontWeight.bold,color: AppColors.primaryColor),),
                          SizedBox(height: 10,),
                          Text("85%",style: GoogleFonts.acme(fontSize: 20,color: Colors.green))
                        ],
                      ) ,

                    ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        singleComponents('Total withdraw', '50,000,000,00', false),
                        singleComponents('Total withdraw', '50,000,000,00', true),
                        singleComponents('Total withdraw', '50,000,000,00', false),
                        singleComponents('Total withdraw', '50,000,000,00', true),
                      ],
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  singleComponents('Total withdraw', '50,000,000,00', false),
                  singleComponents('Total withdraw', '50,000,000,00', true),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
  Widget statisticsCharts2() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("       Statistics",style: TextStyle(fontWeight: FontWeight.bold),),
        SizedBox(height: 10,),
        container(
          Row(
            children: [
              Padding(
                padding: EdgeInsets.all(15.0),
                child:  CircularPercentIndicator(
                  radius: 60.0,
                  lineWidth: 5.0,
                  percent: 0.85,
                  linearGradient:const LinearGradient(
                      colors: [
                        AppColors.primaryColor,
                        AppColors.secondaryColor
                      ]
                  ),
                  center:  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Next Rank',style: GoogleFonts.acme(fontSize: 17,fontWeight: FontWeight.bold,color: AppColors.primaryColor),),
                      SizedBox(height: 10,),
                      Text("85%",style: GoogleFonts.acme(fontSize: 20,color: Colors.green))
                    ],
                  ) ,

                ),
              ),
              Expanded(child:
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                Row(children: [
                  singleComponents('Total withdraw', '50,000,000,00', false),
                  singleComponents('Total withdraw', '50,000,000,00', true),
                ],),
                Row(children: [
                  singleComponents('Total withdraw', '50,000,000,00', false),
                  singleComponents('Total withdraw', '50,000,000,00', true),
                ],)
              ],))
            ],
          ),
        ),
      ],
    );
  }

  Widget singleComponents(String name,String profit,bool isUp){
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
      child: Column(
        children: [
          Text('$name',style: TextStyle(fontSize: 11),),
          Row(
            children: [
              isUp?Icon(Icons.arrow_upward_sharp,color: Colors.green,size: 10,):Icon(Icons.arrow_downward,size:10,color: Colors.redAccent,),
              if(isUp)
                Text(r'$',style: TextStyle(color: Colors.green,fontSize: 10),),
              Text(profit,style: TextStyle(fontSize: 10),)

            ],
          )
        ],
      ),
    );
  }

}
