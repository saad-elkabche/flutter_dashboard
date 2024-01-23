

import 'package:ayoub_baali/core/constants/app_color.dart';
import 'package:ayoub_baali/core/constants/app_images_icons.dart';
import 'package:ayoub_baali/core/constants/enums.dart';
import 'package:ayoub_baali/presentation/ui/components/app_header.dart';
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
import 'package:flutter_screenutil/flutter_screenutil.dart';


class DashboardSecreen extends StatelessWidget {


  late SecreenSize size;
  late double width;
  late double height;

  DashboardSecreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    size=TemplateState.sizeOf(context);
    width=TemplateState.widthOf(context);
    height=TemplateState.heightOf(context);

    return Scaffold(
      appBar: MyHeader(size: size,
          name: 'Dashboard',
          leading:const ImageIcon(AssetImage(AppImages.ic_home,)
            ,color: AppColors.secondaryColor,) ,
        mobActions: [
          IconButton(onPressed:(){
            TemplateState.scaffoldStateOf(context).currentState!.openDrawer();
          } , icon: Image.asset(AppImages.ic_dashboard_mob))
        ],
      ),
      body:  ListView(
        children: [

          SizedBox(height: 13.h,),
          _getProfInfo(),

           SizedBox(height: 40.h,),

          if(size==SecreenSize.large)
            _getAction(),


           SizedBox(height: 15.h,),

          _getProfits(),
           SizedBox(height: 15.h,),
          _getCharts(),

          SizedBox(height: 40.h,)









        ],
      ),
    );



  }


  Widget _getProfInfo(){
    if(size==SecreenSize.large || size==SecreenSize.medium) {
      return Row(
        children: [
          Expanded(
              flex: 3,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: MainContainer(height: height*0.1,minHeight: 120, child: ProfileInfo()),
              )
          ),
          Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: MainContainer(
                    height: height*0.1,minHeight: 120,child: ReferrelLink(size: size,)),
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
              Expanded(child:Profite(size: size,icon:AppImages.ic_rd_money,  profit:'0.0000' , name: 'Cash Balance', action: 'Add Money',color: Colors.white,textColor: Colors.black,)),
              Expanded(child:Profite(size: size,icon:AppImages.ic_rd_invest , profit:'0.0000' , name: 'Investment Amount', action: 'My Investment',color: AppColors.primaryColor),),
            ],
          ),
          Row(
            children: [
              Expanded(child: Profite(size: size,icon:AppImages.ic_rd_profit, profit:'0.0000' , name: 'Investment Profit', action: 'Transfer To Cash Balance',color: AppColors.primaryColor,)),
              Expanded(child: Profite(size: size,icon:AppImages.ic_rd_affialiate , profit:'0.0000' , name: 'Affiliate Income', action: 'Transfer To Cash Balance',color: AppColors.primaryColor,)),
            ],
          )
        ],
      );
    }

    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(child: Profite( size: size,icon:AppImages.ic_rd_money,height:height*0.18 , profit:'0.0000' , name: 'Cash Balance', action: 'Add Money',color: Colors.white,textColor: Colors.black,)),
          Expanded(child: Profite( size: size,icon:AppImages.ic_rd_invest,height:height*0.18 , profit:'0.0000' , name: 'Investment Amount', action: 'My Investment',color: AppColors.primaryColor)),
          Expanded(child: Profite( size: size,icon:AppImages.ic_rd_profit,height:height*0.18 , profit:'0.0000' , name: 'Investment Profit', action: 'Transfer To Cash Balance',color: AppColors.primaryColor,)),
          Expanded(child: Profite( size: size,icon:AppImages.ic_rd_affialiate,height:height*0.18 , profit:'0.0000' , name: 'Affiliate Income', action: 'Transfer To Cash Balance',color: AppColors.primaryColor,)),
        ],
      ),
    );


  }

  Widget _getCharts() {
    if(size==SecreenSize.large){
      return Row(
        children: [
          Expanded(flex:2,child: StatisticsChart(height: height*0.3,size: size,)),
          Expanded(flex: 3,child: EarningChart(height: height*0.3,size: size,))
        ],
      );
    }
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        children: [
          StatisticsChart(height: 180,size: size,),
          const SizedBox(height: 15,),
          EarningChart(height: 280,size: size,)
        ],
      ),
    );
  }

  Widget _getAction() {
    return  Center(
      child: MainContainer(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(child: ActionWeb(name: 'My Invest', icon: AppImages.ic_my_invest,height: height,)),
            Expanded(child: ActionWeb(name: 'Add Money', icon: AppImages.ic_money,height: height,)),
            Expanded(child: ActionWeb(name: 'Withdraw', icon: AppImages.ic_withdraw_action,height: height,)),
            Expanded(child: ActionWeb(name: 'Network', icon: AppImages.ic_network,height: height,)),
            Expanded(child: ActionWeb(name: 'Profit log', icon: AppImages.ic_profit_log,height: height,)),
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
