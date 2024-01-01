

import 'package:ayoub_baali/core/constants/app_color.dart';
import 'package:flutter/material.dart';


class ProfileInfo extends StatelessWidget {
  double width;

  final breakPoint=675;

   ProfileInfo({required this.width}) ;

  @override
  Widget build(BuildContext context) {
    return width>breakPoint
        ?Row(
      children: [
        Expanded(flex:3,child: container(info(context),140)),
        Expanded(flex:2,child: container(referral_Link(),140)),
      ],
    ):Column(
      children: [
        container(
          Column(
            children: [
              info(context),
              referal_link_mobile()
            ],
          )

        ),

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
  Widget info(BuildContext context){
    return  Row(
      crossAxisAlignment:width<breakPoint?CrossAxisAlignment.end: CrossAxisAlignment.center,
      children: [
        Container(
          height: 60,
          width: 60,
          margin: const EdgeInsets.only(left: 20),
          decoration:const BoxDecoration(
            shape: BoxShape.circle,
            color: AppColors.secondaryColor
          ),
          child: const Icon(Icons.person,color: Colors.white,size: 50,),
        ),
         Expanded(
           child: Padding(
            padding:  EdgeInsets.only(left: 18.0,),
            child:  Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('SAMEER 07',style: Theme.of(context).textTheme.titleMedium!.copyWith(color: Colors.black,fontWeight: FontWeight.bold),),
                SizedBox(height: 5,),
                Text('Consultant Manager',style: TextStyle(fontWeight: FontWeight.normal,fontSize: 8),),
                SizedBox(height: 5,),
                Text('Membership: Daimond',style: TextStyle(fontWeight: FontWeight.normal,fontSize: 8),),
                SizedBox(height: 5,),
                Text('Upgrade Expires: 31 Dec, 2025',style: TextStyle(fontWeight: FontWeight.normal,fontSize: 8),),

              ],
            ),
        ),
         ),
        Padding(
          padding: const EdgeInsets.only(right: 8.0,bottom: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text.rich(
                TextSpan(
                    //text: 'Joined on: ',
                    children: [
                      TextSpan(text: 'Joined on: ',
                          style: Theme.of(context).textTheme.titleMedium!.copyWith(fontSize: 10,fontWeight: FontWeight.bold,color: Colors.black)),
                      TextSpan(text: '07.06.2021',style: TextStyle(fontSize: 8))
                    ],

                ),
              ),

              Text.rich(
                TextSpan(
                  //text: 'Joined on: ',
                  children: [
                    TextSpan(text: 'By user ID: ',style: Theme.of(context).textTheme.titleMedium!.copyWith(fontSize:10,fontWeight: FontWeight.bold,color: Colors.black)),
                    const TextSpan(text: '42245',style: TextStyle(fontSize: 8))
                  ],

                ),
              ),

            ],
          ),
        )
      ],
    );
  }
  Widget referral_Link(){
    return Padding(
      padding: const EdgeInsets.only(left: 18.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Referral link'),
          SizedBox(height: 12,),
          Text('https://abp.net/b/sdr3545tfs',style: TextStyle(color: AppColors.primaryColor,fontSize: 14,fontWeight: FontWeight.bold),),
          SizedBox(height: 12,),
          Row(
            children: [
              ElevatedButton(onPressed: (){}, child: Text('copy',style: TextStyle(color: Colors.white),)
                ,style: ElevatedButton.styleFrom(backgroundColor: AppColors.secondaryColor,shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(7))),),
              const SizedBox(width: 10,),
              ElevatedButton(onPressed: (){}, child: Text('Share',style: TextStyle(color: Colors.white),)
                ,style: ElevatedButton.styleFrom(backgroundColor: AppColors.secondaryColor,shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(7))),)
            ],
          )
        ],
      ),
    );
  }
  Widget referal_link_mobile(){
    return Center(
      child: Container(
        height: 28,
        margin: EdgeInsets.symmetric(vertical: 18,horizontal: 10),
        constraints: BoxConstraints(
          maxWidth: 450
        ),
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ElevatedButton(onPressed: (){}, child: Text('My Refferal Link',style: TextStyle(color: Colors.white,fontSize: 12),)
              ,style: ElevatedButton.styleFrom(backgroundColor: AppColors.secondaryColor,shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(7))),),
            const SizedBox(width: 10,),
            Expanded(child: Text('https://abp.net/b/sdr3545tfs',overflow: TextOverflow.ellipsis,style: TextStyle(color: AppColors.primaryColor,fontSize: 10,fontWeight: FontWeight.bold),)),
            ElevatedButton(onPressed: (){}, child: Text('copy',style: TextStyle(color: Colors.white,fontSize: 12),)
              ,style: ElevatedButton.styleFrom(backgroundColor: AppColors.secondaryColor,shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(7))),),

          ],
        ),
      ),
    );
  }

}


