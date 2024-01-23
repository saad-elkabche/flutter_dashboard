import 'package:ayoub_baali/core/constants/app_color.dart';
import 'package:ayoub_baali/core/constants/app_images_icons.dart';
import 'package:ayoub_baali/core/constants/enums.dart';
import 'package:ayoub_baali/presentation/ui/components/app_header.dart';
import 'package:ayoub_baali/presentation/ui/components/components.dart';
import 'package:ayoub_baali/presentation/ui/secreens/kyc_verification/components/kyc_form.dart';
import 'package:ayoub_baali/presentation/ui/secreens/kyc_verification/components/kyc_title.dart';
import 'package:ayoub_baali/presentation/ui/secreens/kyc_verification/components/warning.dart';
import 'package:ayoub_baali/presentation/ui/secreens/template/template_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';




class KycVerificationSecreen extends StatelessWidget {
  late SecreenSize size;
  late double width;
  KycVerificationSecreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    size=TemplateState.sizeOf(context);
    width=TemplateState.widthOf(context);

    return Scaffold(
      appBar: MyHeader(
          name:'KYC Verification',
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
      body:  ListView(
        children: [
          KycWarning(),
          SizedBox(height: 20.h,),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: KycTitle(size: size),
          ),
          SizedBox(height: 25.h,),
          size==SecreenSize.small
              ?
          KYCForm(size: size)
              :
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: MainContainer(child: KYCForm(size: size,)),
          ),
          SizedBox(height: 40.h,),

        ],
      ),
    );
  }
}
