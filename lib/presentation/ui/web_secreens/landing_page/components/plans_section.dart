import 'package:ayoub_baali/core/constants/app_color.dart';
import 'package:ayoub_baali/core/constants/app_images_icons.dart';
import 'package:ayoub_baali/core/constants/enums.dart';
import 'package:ayoub_baali/presentation/ui/components/web_back_decoration.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';





class PlansSection extends StatelessWidget {
  SecreenSize size;
   PlansSection({required this.size});

  @override
  Widget build(BuildContext context) {
    if(size==SecreenSize.large){
      return plansLarge();
    }else if(size==SecreenSize.medium){
      return plansMedium();
    }else{
      return plansSmall();
    }



  }
  Widget plansMedium(){
    return Column(
      children: [
        WebBackDecoration(
            decorationHeight: 180,
            containerHeight: 320,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                plan([
                  r'Invest = 20$-10,000$.',
                  'Profit Ratio = upto 7% monthly.',
                  'Lock Period = 01 day to 365 days.',
                  'Profit Distribution = Until release.',
                ], 'Flexible PLAN'),


                plan([
                  r'Invest = 20$-10,000$.',
                  'Profit Ratio = upto 10% monthly.',
                  'Lock Period = 730 days. ',
                  'Profit Distribution = Until release.',
                ], 'Non-Flexible PLAN'),
              ],
            )
        ),
        SizedBox(height: 15,),

        plan([
          r'Basic Line 1 = 2% upto 20 levels. ',
          'Basic Line 2 = 2% upto 20 levels.',
          'Advance Line = 40 % Upto unlimited ',
          'Different memberships for different levels.',
        ], 'EBP Special',AppColors.primaryColor),



      ],
    );
  }
  Widget plansSmall(){
    return Column(
      children: [



        WebBackDecoration(decorationHeight: 200,
            containerHeight: 320,
            child:  Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: plan([
                r'Invest = 20$-10,000$.',
                'Profit Ratio = upto 7% monthly.',
                'Lock Period = 01 day to 365 days.',
                'Profit Distribution = Until release.',
              ], 'Flexible PLAN'),
            ),
        ),

        //SizedBox(height: 10,)


        WebBackDecoration(decorationHeight: 200,
          containerHeight: 320,
          child:    Padding(
            padding:  const EdgeInsets.symmetric(horizontal: 18.0),
            child: plan([
              r'Invest = 20$-10,000$.',
              'Profit Ratio = upto 10% monthly.',
              'Lock Period = 730 days. ',
              'Profit Distribution = Until release.',
            ], 'Non-Flexible PLAN'),
          ),
        ),


        WebBackDecoration(decorationHeight: 200,
          containerHeight: 320,
          child:    Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: plan([
              r'Basic Line 1 = 2% upto 20 levels. ',
              'Basic Line 2 = 2% upto 20 levels.',
              'Advance Line = 40 % Upto unlimited ',
              'Different memberships for different levels.',
            ], 'EBP Special',AppColors.primaryColor),
          ),
        ),


      ],
    );
  }


  Widget plansLarge(){
    return WebBackDecoration(

        decorationHeight: 220,
        containerHeight: 320,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [

            plan([
              r'Invest = 20$-10,000$.',
              'Profit Ratio = upto 7% monthly.',
              'Lock Period = 01 day to 365 days.',
              'Profit Distribution = Until release.',
            ], 'Flexible PLAN'),


            plan([
              r'Invest = 20$-10,000$.',
              'Profit Ratio = upto 10% monthly.',
              'Lock Period = 730 days. ',
              'Profit Distribution = Until release.',
            ], 'Non-Flexible PLAN'),

            plan([
              r'Basic Line 1 = 2% upto 20 levels. ',
              'Basic Line 2 = 2% upto 20 levels.',
              'Advance Line = 40 % Upto unlimited ',
              'Different memberships for different levels.',
            ], 'EBP Special',AppColors.primaryColor),


          ],
        )
    );
  }










  Widget plan(List<String> items,String name,[Color borderColor=AppColors.secondaryColor]){
    return Container(
      width: size==SecreenSize.large?325:size==SecreenSize.medium?300:double.infinity,
      height: 300,
      decoration: BoxDecoration(
          color: AppColors.scaffoldColor,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: borderColor,width: 1.5)
      ),
      child: Column(
        children: [
          SizedBox(height: 20,),
          Text('$name',style: GoogleFonts.poppins(color: AppColors.primaryColor,fontWeight: FontWeight.bold,fontSize: 20),),
          SizedBox(height: 15,),


          planItem(items.elementAt(0),AppImages.ic_invest),

          planItem(items.elementAt(1),AppImages.ic_profit_ratio),


          planItem(items.elementAt(2),AppImages.ic_invest),

          planItem(items.elementAt(3),AppImages.ic_profit)
        ],
      ),
    );
  }

  Widget planItem(String item,String img){
    return  ListTile(
      leading:Image.asset(img) ,
      title: Text(item,style:GoogleFonts.poppins(color: Colors.black,fontSize: 13,fontWeight: FontWeight.w500) ,),
    );
  }


}
