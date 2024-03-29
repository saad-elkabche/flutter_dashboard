import 'package:ayoub_baali/core/constants/app_color.dart';
import 'package:ayoub_baali/core/constants/enums.dart';
import 'package:ayoub_baali/presentation/ui/components/components.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';





class StatisticsChart extends StatelessWidget {
  
  double height;
  SecreenSize size;

   StatisticsChart({required this.height,required this.size});

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         Padding(
          padding: const EdgeInsets.only(left: 18.0),
          child: Text("Statistics",style: TextStyle(fontWeight: FontWeight.bold,fontSize: size==SecreenSize.large?25:15),),
        ),
        const SizedBox(height: 10,),
        size==SecreenSize.large


        ?MainContainer(
          height: height,
            minHeight: 320,
            child:Row(
              children: [
                Expanded(
                  flex: 3,
                    child:Column(
                      children: [
                        Expanded(flex: 3,child: _circle()),
                        Expanded(
                          flex: 1,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(child: _singleProfit('Total Rewards', '50.00.00', true, false,false)),
                              Expanded(child: _singleProfit('Network Member', '50.00.00', false, false,true)),
                            ],
                          ),
                        )
                      ],
                    )
                ),
                Expanded(
                  flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(child: _singleProfit('Total Withdraw', '50,00,00', true, true, false)),
                        Expanded(child: _singleProfit('Total Commision', '50,00,00', true, true, false)),
                        Expanded(child: _singleProfit('Monthly Incentive', '50,00,00', true, true, false)),
                        Expanded(child: _singleProfit('Total Network Sale', '50,00,00', false, true, true)),
                      ],
                    )
                )
              ],
            )
        )



        :MainContainer(
          height: height,
            child: Row(
              children: [
                Expanded(
                    flex: 2,
                    child: _circle()),
                Expanded(
                  flex: 4,
                    child: Row(
                      children: [
                        Expanded(
                          child: Center(
                            child: Column(
                              children: [
                                Expanded(child: _singleProfit('Total Commision', '50,00,00', true, true, false)),
                                Expanded(child: _singleProfit('Monthly Incentive', '50,00,00', true, true, false)),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                            child: Center(
                              child: Column(
                                children: [
                                  Expanded(child: _singleProfit('Totla Withdraw', '50,00,00', true, true, false)),
                                  Expanded(child: _singleProfit('Total Network Sale', '50,00,00', false, true, true)),
                                ],
                              ),
                            ),
                        ),
                        Expanded(
                            child: Center(
                              child: Column(
                                children: [
                                  Expanded(child: _singleProfit('Total Rewards', '50.00.00', true, false,false)),
                                  Expanded(child: _singleProfit('Network Member', '50.00.00', false, false,true)),
                                ],
                              ),
                            ),
                        ),
                      ],
                    )
                )
              ],
            )
        )

      ],
    );
  }

  Widget _circle(){
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.all(7.0),
          child:  CircularPercentIndicator(
            radius: size==SecreenSize.large?60.0:size==SecreenSize.medium?55.0:40,
            lineWidth: 7.0,
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
                Text('Next Rank',style: GoogleFonts.acme(fontSize:size==SecreenSize.small?12: 17,fontWeight: FontWeight.bold,color: AppColors.primaryColor),),
                SizedBox(height: 10,),
                Text("85%",style: GoogleFonts.acme(fontSize:size==SecreenSize.small?15: 20,color: Colors.green))
              ],
            ) ,

          ),
        ),
        SizedBox(height: 5,),
        Text('You Have Complete the Next Rank',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontWeight: FontWeight.w500,color: Colors.black,fontSize: 10),)
      ],
    );
  }
  Widget _singleProfit(String name,String number,bool isUp,bool isDollar,bool isGreen){
    return  Padding(
      padding: const EdgeInsets.all(3.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('$name',style: GoogleFonts.poppins(color: Colors.black,fontSize: size==SecreenSize.small
              ?10
              :13,
              fontWeight: FontWeight.w400),overflow: TextOverflow.ellipsis,),
          Row(
            children: [
              Icon(
                isUp
                    ?Icons.arrow_upward_sharp
                    :Icons.arrow_downward
                ,color:isGreen? Colors.green:Colors.redAccent,size: 12,),

              if(isDollar)
              Text(r'$',style:GoogleFonts.poppins(color: Colors.green,fontSize: 10),),

              Expanded(child: Text(number,overflow: TextOverflow.ellipsis,style:GoogleFonts.poppins(fontSize: 11,color: AppColors.primaryColor),))

            ],
          )
        ],
      ),
    );
  }
}
