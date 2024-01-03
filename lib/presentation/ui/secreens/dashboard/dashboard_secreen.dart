

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
import 'package:ayoub_baali/presentation/ui/secreens/template/template_state.dart';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';


class DashboardSecreen extends StatelessWidget {


  late SecreenSize size;
  late double width;

  DashboardSecreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    size=TemplateState.sizeOf(context);
    width=TemplateState.widthOf(context);

    return ListView(
      children: [

        SizedBox(height: 13,),
       _getProfInfo(),

        const SizedBox(height: 40,),

        if(size==SecreenSize.large)
       _getAction(),


        const SizedBox(height: 15,),

        _getProfits(),
        const SizedBox(height: 15,),
        _getCharts(),

        const SizedBox(height: 40,)









      ],
    );



  }


  Widget _getProfInfo(){
    if(size==SecreenSize.large) {
      return Row(
        children: [
          Expanded(
              flex: 3,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: MainContainer(height: 120, child: ProfileInfo()),
              )
          ),
          Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: MainContainer(
                    height: 120, child: ReferrelLink(size: size,)),
              )
          ),

        ],
      );
    }

    return   MainContainer(
        child:Column(
          children: [
            const ProfileInfo(),
            ReferrelLink(size: size,)
          ],
        )
    );


  }

  Widget _getProfits(){
    if(width<=700){
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

    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(child: Profite(icon:AppImages.ic_rd_money , profit:'0.0000' , name: 'Cash Balance', action: 'Add Money',color: Colors.white,textColor: Colors.black,)),
          Expanded(child: Profite(icon:AppImages.ic_rd_invest , profit:'0.0000' , name: 'Investment Amount', action: 'My Investment',color: AppColors.primaryColor)),
          Expanded(child: Profite(icon:AppImages.ic_rd_profit , profit:'0.0000' , name: 'Investment Profit', action: 'Transfer To Cash Balance',color: AppColors.primaryColor,)),
          Expanded(child: Profite(icon:AppImages.ic_rd_affialiate , profit:'0.0000' , name: 'Affiliate Income', action: 'Transfer To Cash Balance',color: AppColors.primaryColor,)),
        ],
      ),
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

  Widget _getAction() {
    return  Center(
      child: MainContainer(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(child: ActionWeb(name: 'My Invest', icon: AppImages.ic_my_invest)),
            Expanded(child: ActionWeb(name: 'Add Money', icon: AppImages.ic_money)),
            Expanded(child: ActionWeb(name: 'Withdraw', icon: AppImages.ic_withdraw_action)),
            Expanded(child: ActionWeb(name: 'Network', icon: AppImages.ic_network)),
            Expanded(child: ActionWeb(name: 'Profit log', icon: AppImages.ic_profit_log)),
          ],
        ),
      ),
    );
  }

  /*Padding(
            padding: const EdgeInsets.only(left: 18.0),
            child: Wrap(
              children: [

              ],
            ),
          ),*/





}
