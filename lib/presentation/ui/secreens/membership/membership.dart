import 'package:ayoub_baali/core/constants/app_color.dart';
import 'package:ayoub_baali/core/constants/app_images_icons.dart';
import 'package:ayoub_baali/core/constants/enums.dart';
import 'package:ayoub_baali/presentation/ui/components/app_header.dart';
import 'package:ayoub_baali/presentation/ui/secreens/membership/components/header.dart';
import 'package:ayoub_baali/presentation/ui/secreens/membership/components/memberships.dart';
import 'package:ayoub_baali/presentation/ui/secreens/membership/components/table.dart';
import 'package:ayoub_baali/presentation/ui/secreens/template/template_state.dart';
import 'package:flutter/material.dart';






class Membership extends StatelessWidget {
  late SecreenSize size;
  late double width;


  Membership() ;

  @override
  Widget build(BuildContext context) {
    size=TemplateState.sizeOf(context);
    width=TemplateState.widthOf(context);

    return Scaffold(
      appBar:  MyHeader(
          name:'Membership',
          size: size,
          leadingWidth: size!=SecreenSize.large?80:null,
          leading: Row(
            children: [
              IconButton(
                  onPressed: ()=>TemplateState.scaffoldStateOf(context).currentState!.openDrawer(),
                  icon: Image.asset(AppImages.ic_dashboard_mob)
              ),
              const ImageIcon(AssetImage(AppImages.ic_person),color: AppColors.secondaryColor,)
            ],
          ),

          mobActions:const [
            ImageIcon(AssetImage(AppImages.ic_notification),color: AppColors.secondaryColor,),
            Icon(Icons.arrow_forward_ios,color: AppColors.secondaryColor,),
            SizedBox(width: 5,)
          ]
      ),
      body: ListView(
        children: [

          const SizedBox(height: 40,),
          MembershipHeader(size: size),
          const SizedBox(height: 30,),
          MemberShipsDetails(size: size,),
          SizedBox(height: 40,),
          MemberShipTable(size: size,),
          SizedBox(height: 40,),


        ],
      ),
    );
  }
}
