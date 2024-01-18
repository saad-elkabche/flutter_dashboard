import 'package:ayoub_baali/core/constants/app_color.dart';
import 'package:ayoub_baali/core/constants/app_images_icons.dart';
import 'package:ayoub_baali/core/constants/enums.dart';
import 'package:ayoub_baali/presentation/ui/components/app_header.dart';
import 'package:ayoub_baali/presentation/ui/secreens/change_pass/components/change_pass_form.dart';
import 'package:ayoub_baali/presentation/ui/secreens/template/template_state.dart';
import 'package:flutter/material.dart';




class ChangePassSecreen extends StatelessWidget {

  late SecreenSize size;
  late double width;


  ChangePassSecreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    size=TemplateState.sizeOf(context);
    width=TemplateState.widthOf(context);

    return Scaffold(
      appBar:  MyHeader(
          name:'Change password',
          size: size,
          leadingWidth: size!=SecreenSize.large?80:null,
          leading: size!=SecreenSize.small
              ?
          Row(
            children: [
              IconButton(
                  onPressed: ()=>TemplateState.scaffoldStateOf(context).currentState!.openDrawer(),
                  icon: Image.asset(AppImages.ic_dashboard_mob)
              ),
              const ImageIcon(AssetImage(AppImages.ic_person),color: AppColors.secondaryColor,)
            ],
          )
              :
          IconButton(
              onPressed: ()=>TemplateState.scaffoldStateOf(context).currentState!.openDrawer(),
              icon:  Icon(Icons.arrow_back_ios,color: AppColors.secondaryColor,)
          ),


          mobActions:size!=SecreenSize.small
              ?
          [
            ImageIcon(AssetImage(AppImages.ic_notification),color: AppColors.secondaryColor,),
            Icon(Icons.arrow_forward_ios,color: AppColors.secondaryColor,),
            SizedBox(width: 5,)
          ]
              :
          [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: const ImageIcon(AssetImage(AppImages.ic_person),color: AppColors.secondaryColor,),
            )
          ]
      ),

      body: ListView(
        children: [
          ChangePassForm(size: size,)
        ],
      ),


    );
  }
}
