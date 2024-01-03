import 'package:ayoub_baali/core/constants/app_color.dart';
import 'package:ayoub_baali/core/constants/enums.dart';
import 'package:ayoub_baali/presentation/ui/components/components.dart';
import 'package:ayoub_baali/presentation/ui/secreens/plan/components/confirmation.dart';
import 'package:ayoub_baali/presentation/ui/secreens/plan/components/plan_details.dart';
import 'package:ayoub_baali/presentation/ui/secreens/plan/components/plan_header.dart';
import 'package:ayoub_baali/presentation/ui/secreens/plan/components/plans.dart';
import 'package:ayoub_baali/presentation/ui/secreens/template/template_state.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';




class PlanSecreen extends StatefulWidget {


  PlanSecreen({Key? key}) : super(key: key);

  @override
  State<PlanSecreen> createState() => _PlanSecreenState();
}

class _PlanSecreenState extends State<PlanSecreen> {
  late SecreenSize size;

  late double width;

  @override
  Widget build(BuildContext context) {
    size=TemplateState.sizeOf(context);
    width=TemplateState.widthOf(context);

    return Center(child: Text('plan'),); /*ListView(
      children: [
        SizedBox(height: 30,),
        if(size==SecreenSize.large)
        PlandHeader(),
        const SizedBox(height: 15,),

        if(size!=SecreenSize.large)
          Center(child: Text('CHOOSE A PLAN TO START',style: GoogleFonts.poppins(color: AppColors.primaryColor,fontWeight: FontWeight.bold,fontSize: 20),)),

        const SizedBox(height: 15,),

        plans(),
        const SizedBox(height: 15,),
        if(size!=SecreenSize.large)
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: PlanDetails(size: size),
          ),




      ],
    );*/
  }

  Widget plans() {
    if(size!=SecreenSize.large){
      return Padding(
          padding: EdgeInsets.symmetric(horizontal: 18),
        child: MainContainer(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
            child: Plans(size: size,purchase: purchase),
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
                Expanded(child: Plans(size: size,purchase: purchase)),
                Container(margin: const EdgeInsets.symmetric(horizontal:15 ),width: 1.5,height: 270,color: Colors.grey.withOpacity(0.4),),
                Expanded(child: PlanDetails(size: size,))
              ],
            ),
          )
      ),
    );

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
