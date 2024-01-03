import 'package:ayoub_baali/core/constants/app_color.dart';
import 'package:ayoub_baali/core/constants/app_images_icons.dart';
import 'package:ayoub_baali/core/constants/enums.dart';
import 'package:ayoub_baali/presentation/ui/components/button1.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class Plans extends StatelessWidget {
  SecreenSize size;
  void Function()? purchase;
  Plans({required this.size,this.purchase});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if(size==SecreenSize.large)
          Text('CHOOSE A PLAN TO START',style: GoogleFonts.poppins(color: AppColors.primaryColor,fontWeight: FontWeight.bold,fontSize: 20),),
        const SizedBox(height: 15,),
        plan('Flexible PLAN', r'20$-10,000$', AppColors.primaryColor, Colors.white),
        const SizedBox(height: 15,),
        plan('Non-Flexible PLAN', r'20$-10,000$', Colors.white, AppColors.primaryColor),
        const SizedBox(height: 15,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Purchase Quantity',style:GoogleFonts.poppins(color: AppColors.primaryColor,fontWeight: FontWeight.bold),),
            Text(r'1 Package Price = $20USD',overflow: TextOverflow.ellipsis,style:GoogleFonts.poppins(color: Colors.black,fontWeight: FontWeight.normal,fontSize: 8,),),
          ],
        ),
        const SizedBox(height: 15,),
        Container(
          width: double.infinity,
          height: 40,
          padding: const EdgeInsets.symmetric(horizontal: 13),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow:const [
              BoxShadow(color: Colors.grey,offset: Offset(4,4),blurRadius: 15)
            ]
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('5',style: GoogleFonts.poppins(color: AppColors.primaryColor,fontWeight: FontWeight.bold),),
              ImageIcon(AssetImage(AppImages.ic_navigation),color: AppColors.secondaryColor,)
            ],
          ),
        ),
        const SizedBox(height: 15,),

        Row(
          mainAxisAlignment: size==SecreenSize.small?MainAxisAlignment.center:MainAxisAlignment.spaceBetween,
          children: [
            MySimpleBotton(name: 'Purchase Now', onclick: purchase,width: 160, height: 40),
            if(size!=SecreenSize.small)
            Text('Price: 100USD',style: GoogleFonts.poppins(color: Colors.black,fontWeight: FontWeight.normal),)
          ],
        )

      ],
    );
  }
  
  Widget plan(String name,String amount,Color color,Color textColor){
    return Container(
      height: 40,
      padding: EdgeInsets.symmetric(horizontal: 15),
      width: double.infinity,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(color: Colors.grey,offset: Offset(4,4),blurRadius: 15)
        ]
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          
          Expanded(
            flex: 2,
            child: Row(
              children: [
                const ImageIcon(AssetImage(AppImages.ic_check),color: AppColors.secondaryColor,),
                const SizedBox(width: 15,),
                Expanded(child: Text(name,overflow:TextOverflow.ellipsis,style: GoogleFonts.poppins(color: textColor,fontWeight: FontWeight.bold),))
              ],
            ),
          ),
          
          Expanded(flex:1,child: Text(amount,textAlign: TextAlign.end,overflow:TextOverflow.ellipsis,style: GoogleFonts.poppins(color: textColor,fontWeight: FontWeight.bold),))
          
          
        ],
      ),
    );
  }
}
