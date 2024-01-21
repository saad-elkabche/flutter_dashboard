import 'package:ayoub_baali/core/constants/app_color.dart';
import 'package:ayoub_baali/core/constants/app_images_icons.dart';
import 'package:ayoub_baali/core/constants/enums.dart';
import 'package:ayoub_baali/presentation/ui/components/app_header.dart';
import 'package:ayoub_baali/presentation/ui/components/log_out_popup.dart';
import 'package:ayoub_baali/presentation/ui/secreens/profile/components/account_info.dart';
import 'package:ayoub_baali/presentation/ui/secreens/profile/components/profile_header.dart';
import 'package:ayoub_baali/presentation/ui/secreens/template/template_state.dart';
import 'package:ayoub_baali/routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';




class ProfileSecreen extends StatelessWidget {
  late SecreenSize size;
  late double width;

  ProfileSecreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    size=TemplateState.sizeOf(context);
    width=TemplateState.widthOf(context);

    return Scaffold(
      appBar:  MyHeader(
          name:'Account info',
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
          const  SizedBox(height: 40,),
          ProfileHeader(size: size),
          AccountInfo(onLogout:()=> showLogoutPopup(context),)

        ],
      ),
    );
  }

  showLogoutPopup(BuildContext context) async{
    var result=await showDialog(
        context: context,
        barrierColor: Colors.transparent,
        builder: (contxt)=>LogOutPopUp(width: width,));
    if(result ?? false){
      GoRouter.of(context).go(Routes.landing);
    }
  }
}
