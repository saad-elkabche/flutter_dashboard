import 'package:ayoub_baali/core/constants/app_color.dart';
import 'package:ayoub_baali/core/constants/app_images_icons.dart';
import 'package:ayoub_baali/core/constants/enums.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';




class PlanDetails extends StatelessWidget {
  SecreenSize size;
  PlanContent planContent;

  PlanDetails({required this.size,required this.planContent}) ;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: size==SecreenSize.large?CrossAxisAlignment.start:CrossAxisAlignment.center,
      children: [
        Column(
          crossAxisAlignment:size==SecreenSize.large? CrossAxisAlignment.start:CrossAxisAlignment.center,
          children: [
            Text('${planContent.planName}',style: GoogleFonts.poppins(color: AppColors.primaryColor,fontWeight: FontWeight.bold,fontSize: 18),),
            Container(
              width: 100,
              height: 1.5,
              color: AppColors.secondaryColor,
            )
          ],
        ),
        const SizedBox(height: 15,width: double.infinity,),
        Text(planContent.description,
          textAlign: size==SecreenSize.large?TextAlign.start:TextAlign.center,
          style: GoogleFonts.poppins(color: Colors.black,fontWeight: FontWeight.normal,),
        ),
        const SizedBox(height: 15,),
        size==SecreenSize.medium
            ?
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                detail(planContent.features.elementAt(0)),
                 detail(planContent.features.elementAt(1)),
              ],
            ),
            SizedBox(width: 15,),

            Column(
                crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                detail(planContent.features.elementAt(2)),
                detail(planContent.features.elementAt(3)),
              ],
            )
          ],
        )
            :
            Column(

              crossAxisAlignment: CrossAxisAlignment.start,
              children: List.generate(planContent.features.length, (index) => detail(planContent.features.elementAt(index))),
            )



      ],
    );
  }
  Widget detail(String detail){
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const ImageIcon(AssetImage(AppImages.ic_check),color: AppColors.secondaryColor,),
          const SizedBox(width: 15,),
          Text(detail,style: GoogleFonts.poppins(color: Colors.black,fontSize:size==SecreenSize.small?12:null,fontWeight: FontWeight.normal,)),
        ]
      ),
    );
  }
}

class PlanContent{

  String planName;
  String description;
  List<String> features;

  PlanContent(this.planName, this.description, this.features);
}
