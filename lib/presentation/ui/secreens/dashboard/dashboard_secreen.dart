

import 'package:ayoub_baali/core/constants/app_color.dart';
import 'package:ayoub_baali/core/constants/app_images_icons.dart';
import 'package:ayoub_baali/core/constants/enums.dart';
import 'package:ayoub_baali/presentation/ui/components/components.dart';
import 'package:ayoub_baali/presentation/ui/secreens/dashboard/components/actions.dart';
import 'package:ayoub_baali/presentation/ui/secreens/dashboard/components/earning_chart.dart';

import 'package:ayoub_baali/presentation/ui/secreens/dashboard/components/prof_info.dart';
import 'package:ayoub_baali/presentation/ui/secreens/dashboard/components/profites.dart';
import 'package:ayoub_baali/presentation/ui/secreens/dashboard/components/refferel_link.dart';
import 'package:ayoub_baali/presentation/ui/secreens/dashboard/components/statistics_chart.dart';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';


class DashboardSecreen extends StatelessWidget {


  late SecreenSize size;
  late double width;

  DashboardSecreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(



        builder: (context,constraints){

          width=constraints.maxWidth;

          if(width<=400){
            size=SecreenSize.small;
          }else if(width<=765){
            size=SecreenSize.medium;
          }else{
            size=SecreenSize.large;
          }


          return ListView(
            children: [

              SizedBox(height: 13,),


              if(size==SecreenSize.small || size==SecreenSize.medium)
              MainContainer(
                  child:Column(
                    children: [
                      const ProfileInfo(),
                      ReferrelLink(size: size,)
                    ],
                  )
              ),

              if(size==SecreenSize.large)
                Row(
                  children: [
                    Expanded(
                        flex: 3,
                        child:Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: MainContainer(height: 120,child: ProfileInfo()),
                        )
                    ),
                    Expanded(
                        flex: 2,
                        child:Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: MainContainer(height: 120,child: ReferrelLink(size: size,)),
                        )
                    ),
                    
                  ],
                ),

                const SizedBox(height: 40,),
                if(kIsWeb)
                  Padding(
                    padding: const EdgeInsets.only(left: 18.0),
                    child: Wrap(
                      children: [
                        ActionWeb(name: 'My Invest', icon: AppImages.ic_my_invest),
                        ActionWeb(name: 'Add Money', icon: AppImages.ic_money),
                        ActionWeb(name: 'Withdraw', icon: AppImages.ic_withdraw_action),
                        ActionWeb(name: 'Network', icon: AppImages.ic_network),
                        ActionWeb(name: 'Profit log', icon: AppImages.ic_profit_log),
                      ],
                    ),
                  ),

              const SizedBox(height: 15,),

              _getProfits(),
              const SizedBox(height: 15,),
              _getCharts(),

              const SizedBox(height: 40,)









            ],
          );




        }



    );



  }

  Widget _getProfits(){
    if(size==SecreenSize.large){
      return Padding(
        padding: const EdgeInsets.only(left: 18.0),
        child: Wrap(
          children: [
            Profite(icon:AppImages.ic_rd_money , profit:'0.0000' , name: 'Cash Balance', action: 'Add Money',color: Colors.white,textColor: Colors.black,),
            Profite(icon:AppImages.ic_rd_invest , profit:'0.0000' , name: 'Investment Amount', action: 'My Investment',color: AppColors.primaryColor),
            Profite(icon:AppImages.ic_rd_profit , profit:'0.0000' , name: 'Investment Profit', action: 'Transfer To Cash Balance',color: AppColors.primaryColor,),
            Profite(icon:AppImages.ic_rd_affialiate , profit:'0.0000' , name: 'Affiliate Income', action: 'Transfer To Cash Balance',color: AppColors.primaryColor,),
          ],
        ),
      );
    }
    return Column(
      children: [
        Row(
          children: [
            Expanded(child:Profite(icon:AppImages.ic_rd_money , profit:'0.0000' , name: 'Cash Balance', action: 'Add Money',color: Colors.white,textColor: Colors.black,)),
            Expanded(child:Profite(icon:AppImages.ic_rd_invest , profit:'0.0000' , name: 'Investment Amount', action: 'My Investment',color: AppColors.primaryColor),),
          ],
        ),
        Row(
          children: [
            Expanded(child: Profite(icon:AppImages.ic_rd_profit , profit:'0.0000' , name: 'Investment Profit', action: 'Transfer To Cash Balance',color: AppColors.primaryColor,)),
            Expanded(child: Profite(icon:AppImages.ic_rd_affialiate , profit:'0.0000' , name: 'Affiliate Income', action: 'Transfer To Cash Balance',color: AppColors.primaryColor,)),
],
        )
      ],
    );

  }

  Widget _getCharts() {
    if(size==SecreenSize.large){
      return Row(
        children: [
          Expanded(flex:2,child: StatisticsChart(height: 250,size: size,)),
          Expanded(flex: 3,child: EarningChart(height: 250))
        ],
      );
    }
    return Column(
      children: [
        StatisticsChart(height: 180,size: size,),
        SizedBox(height: 15,),
        EarningChart(height: 250)
      ],
    );
  }





}
