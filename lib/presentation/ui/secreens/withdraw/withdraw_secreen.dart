import 'package:ayoub_baali/core/constants/app_color.dart';
import 'package:ayoub_baali/core/constants/app_images_icons.dart';
import 'package:ayoub_baali/core/constants/enums.dart';
import 'package:ayoub_baali/presentation/ui/components/app_header.dart';

import 'package:ayoub_baali/presentation/ui/secreens/template/template_state.dart';
import 'package:ayoub_baali/presentation/ui/secreens/withdraw/components/confirmation.dart';
import 'package:ayoub_baali/presentation/ui/secreens/withdraw/components/payment_gateway.dart';
import 'package:ayoub_baali/presentation/ui/secreens/withdraw/components/preview.dart';
import 'package:ayoub_baali/presentation/ui/secreens/withdraw/components/table.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';




class WithDrawSecreen extends StatefulWidget {



  WithDrawSecreen();

  @override
  State<WithDrawSecreen> createState() => _WithDrawSecreenState();
}

class _WithDrawSecreenState extends State<WithDrawSecreen> {
  late SecreenSize size;

  late double width;

  @override
  Widget build(BuildContext context) {

    size=TemplateState.sizeOf(context);
    width=TemplateState.widthOf(context);

    return Scaffold(
      appBar:  MyHeader(
          name:'Withdraw',
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
          SizedBox(height: 40.h,),
          paymentPreview(),

          if(size==SecreenSize.large)
            Center(
              child: Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Text('History',style: GoogleFonts.poppins(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
                ),
              ),
            ),

          SizedBox(height: 10.h,),
          WithdrawTable(size: size,),
          SizedBox(height: 10.h,),

        ],
      ),
    );
  }

  Widget paymentPreview() {
    if(size==SecreenSize.large){
      return Padding(
        padding: const EdgeInsets.all(18.0),
        child: Row(
          children: [
            Expanded(flex:4,child: PaymentGateway(size: size,height: 410,onclick: showConfirmation,)),
            Expanded(flex:2,child: Preview(size: size,height: 410,)),
          ],
        ),
      );
    }
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          PaymentGateway(size: size,height: 450,onclick: showConfirmation),
          const SizedBox(height: 20,),
          Preview(size: size,height: 280,)
        ],
      ),
    );
  }

  void showConfirmation() {
    showDialog(context: context, builder: (context)=>WithdrawConfirmation(size: size));
  }
}
