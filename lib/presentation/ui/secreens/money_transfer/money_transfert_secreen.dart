import 'package:ayoub_baali/core/constants/app_color.dart';
import 'package:ayoub_baali/core/constants/app_images_icons.dart';
import 'package:ayoub_baali/core/constants/enums.dart';
import 'package:ayoub_baali/presentation/ui/components/app_header.dart';
import 'package:ayoub_baali/presentation/ui/secreens/money_transfer/components/preview.dart';
import 'package:ayoub_baali/presentation/ui/secreens/money_transfer/components/transfert_money.dart';
import 'package:ayoub_baali/presentation/ui/secreens/template/template_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';




class MoneyTransfertSecreen extends StatelessWidget {

  late SecreenSize size;
  late double width;
  
  MoneyTransfertSecreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    size=TemplateState.sizeOf(context);
    width=TemplateState.widthOf(context);
    
    return Scaffold(
      appBar: MyHeader(
        name:'Money Transfert',
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
          SizedBox(height: 20.h,),

          if(size!=SecreenSize.large)
            Center(child: Text('Transfert Your Money',style: GoogleFonts.poppins(color: AppColors.primaryColor,fontSize: 18,fontWeight: FontWeight.bold),)),

          SizedBox(height: 20.h,),

          Padding(
            padding: const EdgeInsets.all(12.0),
            child: transfertMoneyWidgets(),
          )
        ],
      ),
    );
  }

  Widget transfertMoneyWidgets() {
    if(size==SecreenSize.large){
      return Row(
        children: [
          Expanded(flex: 4,child: TransfertMoney(size: size,height: 320,)),
          Expanded(flex: 2,child: Preview(size: size,height: 320,))
        ],
      );
    }
    return Column(
      children: [
        TransfertMoney(size: size,height: 360,),
        const SizedBox(height: 20,),
        Preview(size: size,height:300)
      ],
    );
  }
}
