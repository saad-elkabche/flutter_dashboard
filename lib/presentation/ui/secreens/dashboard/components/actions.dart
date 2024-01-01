
import 'package:ayoub_baali/core/constants/app_color.dart';
import 'package:ayoub_baali/core/constants/app_images_icons.dart';
import 'package:flutter/material.dart';




class ActionsWeb extends StatelessWidget {
   ActionsWeb({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 25,horizontal: 15),
      padding:EdgeInsets.symmetric(vertical: 10,horizontal: 10) ,
      decoration: BoxDecoration(
        color: AppColors.scaffoldColor,
        borderRadius: BorderRadius.circular(10)
      ),
      child: Wrap(
        alignment: WrapAlignment.center,
        crossAxisAlignment: WrapCrossAlignment.center,
        children: [
          action(AppImages.ic_my_invest, 'Invest'),
          action(AppImages.ic_my_invest, 'Add Money'),
          action(AppImages.ic_my_invest, 'Withdraw'),
          action(AppImages.ic_my_invest, 'Network'),
          action(AppImages.ic_my_invest, 'Profit log'),

        ],
      ),
    );
  }
  Widget action(String icon,String name){
    return  Container(
      height: 50,
      width: 155,
      margin: EdgeInsets.symmetric(horizontal: 8,vertical: 5),
      decoration: BoxDecoration(
        color: AppColors.primaryColor,
        borderRadius: BorderRadius.circular(10)
      ),
      child: Row(
        children: [
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              color: AppColors.secondaryColor,
              borderRadius: BorderRadius.circular(10)
            ),
            child: ImageIcon(AssetImage(icon),color: Colors.white,),
          ),
          Expanded(child: Center(child: Text("$name",style: TextStyle(color: Colors.white),)))
        ],
      ),
    );
  }


}
