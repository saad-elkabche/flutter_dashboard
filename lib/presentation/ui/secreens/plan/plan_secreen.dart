import 'package:ayoub_baali/core/constants/app_color.dart';
import 'package:ayoub_baali/core/constants/app_images_icons.dart';
import 'package:ayoub_baali/core/constants/enums.dart';
import 'package:ayoub_baali/presentation/ui/components/app_header.dart';
import 'package:ayoub_baali/presentation/ui/components/components.dart';
import 'package:ayoub_baali/presentation/ui/secreens/plan/components/confirmation.dart';
import 'package:ayoub_baali/presentation/ui/secreens/plan/components/plan_details.dart';
import 'package:ayoub_baali/presentation/ui/secreens/plan/components/plan_header.dart';
import 'package:ayoub_baali/presentation/ui/secreens/plan/components/plans.dart';
import 'package:ayoub_baali/presentation/ui/secreens/template/template_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';




class PlanSecreen extends StatefulWidget {


  PlanSecreen({Key? key}) : super(key: key);

  @override
  State<PlanSecreen> createState() => _PlanSecreenState();
}

class _PlanSecreenState extends State<PlanSecreen> {
  late SecreenSize size;
  late double width;
  late int selectedPlan=0;
  late List<PlanContent> plansContents;

  @override
  void initState() {
    super.initState();
    plansContents=[
      PlanContent('Flexible Plan',
        ' In this plan, you can earn up to 7% profit per month\n'
            ' and withdraw your all assets at any time without\n'
            ' any deductions',
        [
          r'Invest = 20$-10,000$.',
          'Profit Ratio = upto 7% monthly.',
          'Lock Period = 01 day to 365 days.',
          'Profit Ratio = upto 7% monthly. ',
        ]
      ),

      PlanContent('Non-Flexible Plan',
          ' In this plan, your amount will be fixed for 24 months\n'
              'and you can earn up to 10% per month with rewards\n'
              'and onuses.',
          [
                ' Earn Profit Upto 10%',
                '1% Commission Upto 10 Levels',
                r'Maximum Investment $10,000',
                ' Earn Profit Upto 10%',
          ]

      )

    ];
  }

  @override
  Widget build(BuildContext context) {
    size=TemplateState.sizeOf(context);
    width=TemplateState.widthOf(context);

    return Scaffold(
      appBar: MyHeader(
        name:'EBP Plans',
        size: size,
        leadingWidth: size!=SecreenSize.large?80:null,
        leading: Row(
          children: [
            IconButton(onPressed: ()=>TemplateState.scaffoldStateOf(context).currentState!.openDrawer(),
                icon: Image.asset(AppImages.ic_dashboard_mob)),
           const ImageIcon(AssetImage(AppImages.ic_person),color: AppColors.secondaryColor,)
          ],
        ),
        mobActions: [
          if(size==SecreenSize.medium)
            const ImageIcon(AssetImage(AppImages.ic_notification),color: AppColors.secondaryColor,),

          const Icon(Icons.arrow_forward_ios,color: AppColors.secondaryColor,),
          const SizedBox(width: 5,)

        ],
      ),
      body: ListView(
        children: [
           SizedBox(height: 30.h,),
          if(size==SecreenSize.large)
            const PlandHeader(),
          SizedBox(height: 15.h,),

          if(size!=SecreenSize.large)
            Center(child: Text('CHOOSE A PLAN TO START',style: GoogleFonts.poppins(color: AppColors.primaryColor,fontWeight: FontWeight.bold,fontSize: 20),)),

          SizedBox(height: 15.h,),

          plans(),
           SizedBox(height: 15.h,),
          if(size!=SecreenSize.large)
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: PlanDetails(size: size,planContent: plansContents.elementAt(selectedPlan)),
            ),




        ],
      ),
    );
  }

  Widget plans() {
    if(size!=SecreenSize.large){
      return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
        child: MainContainer(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
            child: Plans(size: size,purchase: purchase,onSelectPlan: selectPlan,selectedIndex: selectedPlan),
          ),
        ),
      );
    }
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: MainContainer(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 22.0,horizontal: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(child: Plans(size: size,purchase: purchase,onSelectPlan: selectPlan,selectedIndex: selectedPlan)),
                Container(margin: const EdgeInsets.symmetric(horizontal:15 ),width: 1.5,height: 270,color: Colors.grey.withOpacity(0.4),),
                Expanded(child:PlanDetails(size: size,planContent: plansContents.elementAt(selectedPlan),) )
              ],
            ),
          )
      ),
    );

  }
  void selectPlan(int index){
    setState(() {
      selectedPlan=index;
    });
  }

  void purchase() {
    showDialog(
        context:context ,
        barrierColor: Colors.transparent,
        //anchorPoint: Offset(width/2, 0),

        builder: (context){
        return PlanConfirmation(size: size,);
      }
    );
  }
}
