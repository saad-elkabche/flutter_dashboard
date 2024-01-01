
import 'package:ayoub_baali/core/constants/app_color.dart';
import 'package:ayoub_baali/core/constants/app_images_icons.dart';
import 'package:ayoub_baali/core/constants/enums.dart';
import 'package:ayoub_baali/presentation/ui/secreens/dashboard/components/actions.dart';
import 'package:ayoub_baali/presentation/ui/secreens/dashboard/components/charts.dart';
import 'package:ayoub_baali/presentation/ui/secreens/dashboard/components/header.dart';
import 'package:ayoub_baali/presentation/ui/secreens/dashboard/components/profile_info.dart';
import 'package:ayoub_baali/presentation/ui/secreens/dashboard/components/profites.dart';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';


class DashboardSecreen extends StatelessWidget {


  late SecreenSize size;
  late double width;

  DashboardSecreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Dashboard"),
    );



  }


  Widget _content(){
    if(kIsWeb && size==SecreenSize.large){
      return Row(
        children: [
          Expanded(flex:2,child:  _menu()),
          Expanded(flex:8,child:  _mainContent()),
        ],
      );
    }else{
      return _mainContent();
    }
  }


  Widget _mainContent(){
    return ListView(
      children: [
        MyHeader(size: size),
        const SizedBox(height: 20,),
        ProfileInfo(width: width,),
        if(kIsWeb)
          ActionsWeb(),
        SizedBox(height: 30,),
        Profites(size: size),
        SizedBox(height: 30,),
        Charts(size: size,),
        SizedBox(height: 20,)

      ],
    );
  }

  Widget _menu() {
    return Container(
      color: AppColors.primaryColor,
      child: Column(
        children: [
          Container(
            color: Colors.white,
            height: 65,
            child: Center(child: Icon(Icons.map,size: 40,)),
          ),
          Expanded(child: Column(
            children: [
              ListTile(leading: ImageIcon(AssetImage(AppImages.ic_my_invest),color: AppColors.secondaryColor,),title: Text("Profile",style: TextStyle(color: Colors.white),),),
              ListTile(leading: ImageIcon(AssetImage(AppImages.ic_my_invest),color: AppColors.secondaryColor,),title: Text("Add Money",style: TextStyle(color: Colors.white),),),
               ListTile(leading: ImageIcon(AssetImage(AppImages.ic_my_invest),color: AppColors.secondaryColor,),title: Text("withdraw",style: TextStyle(color: Colors.white),),),
              ListTile(leading: ImageIcon(AssetImage(AppImages.ic_my_invest),color: AppColors.secondaryColor,),title: Text("Transactions",style: TextStyle(color: Colors.white),),),
              ListTile(leading: ImageIcon(AssetImage(AppImages.ic_my_invest),color: AppColors.secondaryColor,),title: Text("Achievements",style: TextStyle(color: Colors.white),),),
              ListTile(leading: ImageIcon(AssetImage(AppImages.ic_my_invest),color: AppColors.secondaryColor,),title: Text("Network Tree",style: TextStyle(color: Colors.white),),),
              ListTile(leading: ImageIcon(AssetImage(AppImages.ic_my_invest),color: AppColors.secondaryColor,),title: Text("Network",style: TextStyle(color: Colors.white),),),
              ListTile(leading: ImageIcon(AssetImage(AppImages.ic_my_invest),color: AppColors.secondaryColor,),title: Text("Profit Log",style: TextStyle(color: Colors.white),),),
              ListTile(leading: ImageIcon(AssetImage(AppImages.ic_my_invest),color: AppColors.secondaryColor,),title: Text("Support",style: TextStyle(color: Colors.white),),),
              ListTile(leading: ImageIcon(AssetImage(AppImages.ic_my_invest),color: AppColors.secondaryColor,),title: Text("change Password",style: TextStyle(color: Colors.white),),),
            ],)),
          Container(
            height: 40,
            decoration: BoxDecoration(
              border: Border(top: BorderSide(color: Colors.white))
            ),
            child: Center(
              child: ListTile(leading: Icon(Icons.copyright_rounded,color: Colors.white),title: Text('copyright 2023',style: TextStyle(color: Colors.white),),),
            ),
          )
        ],
      ),
    );
  }


}
