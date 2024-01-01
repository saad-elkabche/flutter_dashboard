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
        const Padding(
          padding: const EdgeInsets.only(left: 18.0),
          child: Text("Statistics",style: TextStyle(fontWeight: FontWeight.bold),),
        ),
        const SizedBox(height: 10,),
        size==SecreenSize.large


        ?MainContainer(
          height: height,
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
                              _singleProfit('Total Rewards', '50.00.00', true, false,false),
                              _singleProfit('Network Member', '50.00.00', false, false,true),
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
                        Expanded(child: _singleProfit('Totla Withdraw', '50,00,00', true, true, false)),
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
                _circle(),
                Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              Expanded(child: _singleProfit('Total Commision', '50,00,00', true, true, false)),
                              Expanded(child: _singleProfit('Monthly Incentive', '50,00,00', true, true, false)),
                            ],
                          ),
                        ),
                        Expanded(
                            child: Column(
                              children: [
                                Expanded(child: _singleProfit('Totla Withdraw', '50,00,00', true, true, false)),
                                Expanded(child: _singleProfit('Total Network Sale', '50,00,00', false, true, true)),
                              ],
                            ),
                        ),
                        /*Expanded(
                            child: Column(
                              children: [
                                Expanded(child: _singleProfit('Total Rewards', '50.00.00', true, false,false)),
                                Expanded(child: _singleProfit('Network Member', '50.00.00', false, false,true)),
                              ],
                            ),
                        ),*/
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
      children: [
        Padding(
          padding: EdgeInsets.all(7.0),
          child:  CircularPercentIndicator(
            radius: size==SecreenSize.large?60.0:55.0,
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
        Text('You Have Complete the Next Rank',style: GoogleFonts.poppins(color: Colors.black,fontSize: 10),)
      ],
    );
  }
  Widget _singleProfit(String name,String number,bool isUp,bool isDollar,bool isGreen){
    return  Padding(
      padding: const EdgeInsets.all(3.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('$name',style: GoogleFonts.poppins(fontSize: 9,fontWeight: FontWeight.bold),),
          Row(
            children: [
              Icon(
                isUp
                    ?Icons.arrow_upward_sharp
                    :Icons.arrow_downward
                ,color:isGreen? Colors.green:Colors.redAccent,size: 12,),

              if(isDollar)
              Text(r'$',style:GoogleFonts.poppins(color: Colors.green,fontSize: 10),),

              Text(number,style:GoogleFonts.poppins(fontSize: 10),)

            ],
          )
        ],
      ),
    );
  }
}
