

import 'package:ayoub_baali/core/constants/app_color.dart';
import 'package:ayoub_baali/core/constants/app_images_icons.dart';
import 'package:ayoub_baali/core/constants/enums.dart';
import 'package:flutter/material.dart';


class Profites extends StatelessWidget {
  SecreenSize size;

   Profites({required this.size}) ;

  @override
  Widget build(BuildContext context) {
    print(size);
    return size==SecreenSize.large
        ?Wrap(
          crossAxisAlignment: WrapCrossAlignment.center,
      alignment: WrapAlignment.center,
      children: [
        firstProfit(Colors.white,'Investment Amount', 'My Investement', '0.0000'),
        profit(AppColors.primaryColor,'Investment Profit', 'My Investement', '0.0000'),
        profit(AppColors.primaryColor,'Affiliate Incom', 'My Investement', '0.0000'),
        profit(AppColors.primaryColor,'Affiliate Incom', 'My Investement', '0.0000'),
      ],
    )
        :Column(
      children: [
        Row(
          children: [
            Expanded(child: firstProfit(Colors.white,'Investment Amount', 'My Investement', '0.0000')),
            Expanded(child: profit(AppColors.primaryColor,'Investment Profit', 'My Investement', '0.0000')),
          ],
        ),
        Row(
          children: [
            Expanded(child: profit(AppColors.primaryColor,'Investment Amount', 'My Investement', '0.0000')),
            Expanded(child: profit(AppColors.primaryColor,'Investment Profit', 'My Investement', '0.0000')),
          ],
        )
      ],
    );
  }

  Widget profit(Color color,String name,String action,String profit){
    return Container(
      height: 140,
      width: 250,
      margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
      padding: EdgeInsets.only(left: 7),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [BoxShadow(color: Colors.grey,offset: Offset(3,3),blurRadius: 7)]
      ),
      child: Row(children: [
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(name,style: const TextStyle(fontSize: 17,color: Colors.white),textAlign: TextAlign.center,),
              Text("\$${profit}",style: const TextStyle(fontSize: 17,color: Colors.white),),
              ElevatedButton(onPressed: (){},
                style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.secondaryColor,

                    shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(7))),
                  child: Text('$action',style: TextStyle(color: Colors.white,fontSize: 8),)
              )
            ],
          ),
        ),
        Center(
          child: Align(
            alignment: Alignment.topRight,
            child: Container(
              margin: EdgeInsets.only(right: 10,top: 10),
              width: 45,
              height: 45,
              decoration:const BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.secondaryColor,
              ),
              child:const  ImageIcon(AssetImage(AppImages.ic_my_invest),size: 20,color: Colors.white,),
            ),
          )
        )
      ],
      ),
    );

  }
  Widget firstProfit(Color color,String name,String action,String profit) {
    return Container(
      height: 140,
      width: 250,
      padding: EdgeInsets.only(left: 7),
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(20),
          boxShadow: const [
            BoxShadow(color: Colors.grey, offset: Offset(3, 3), blurRadius: 7)
          ]
      ),
      child: Row(children: [
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                name, style: const TextStyle(fontSize: 17, color: Colors.black),
                textAlign: TextAlign.center,),
              Text("\$${profit}",
                style: const TextStyle(fontSize: 17, color: Colors.black),),
              ElevatedButton(onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.secondaryColor,

                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(7))),
                  child: Text('$action',
                    style: TextStyle(color: Colors.white, fontSize: 8),)
              )
            ],
          ),
        ),
        Center(
            child: Align(
              alignment: Alignment.topRight,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(right: 10, top: 10),
                    width: 45,
                    height: 45,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.secondaryColor,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 10, top: 10),
                    width: 35,
                    height: 35,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 10, top: 10),
                    width: 33,
                    height: 32,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.secondaryColor,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 10, top: 10),
                    width: 29,
                    height: 29,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                    child: Center(child: ImageIcon(AssetImage(AppImages.ic_my_invest),size: 20,color: AppColors.secondaryColor,)),
                  ),

                ],
              )
            )
        )
      ],
      ),
    );
  }
}




