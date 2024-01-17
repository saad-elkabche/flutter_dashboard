import 'package:ayoub_baali/core/constants/app_color.dart';
import 'package:ayoub_baali/core/constants/app_images_icons.dart';
import 'package:ayoub_baali/core/constants/enums.dart';
import 'package:ayoub_baali/presentation/ui/components/two_color_text.dart';
import 'package:ayoub_baali/presentation/ui/components/web_back_decoration.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';




class SafetySecurity extends StatelessWidget {
  SecreenSize size;
   SafetySecurity({required this.size});

  @override
  Widget build(BuildContext context) {
    return WebBackDecoration(
        decorationHeight:size==SecreenSize.large?650:size==SecreenSize.medium?1000:1400,
        containerHeight: size==SecreenSize.large?650:size==SecreenSize.medium?1000:1400,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TwoColorText(
              textAlign: TextAlign.center,
                fontSize: 20,
                textOne: 'Safety,Security ',
                textTwo: 'Satisfaction\nWith Every Investment',
                colorOne: AppColors.secondaryColor,
                colortwo: Colors.white
            ),

            SizedBox(height: 15,),


            if(size==SecreenSize.large)
            largeWidgets(),

            if(size==SecreenSize.medium)
              mediumWidgets(),

            if(size==SecreenSize.small)
              smallWidgets()

          ],
        )
    );
  }
  
  Widget largeWidgets(){
    return Row(
      mainAxisAlignment:MainAxisAlignment.spaceEvenly ,
      children: [


        item(
            AppImages.img_strong,
            'STRONG SECURITY',
            'We ensure your all crypto assets are safe'
                ' in EBP. High tech security measures'
                ' guarantee the safety of user’s'
                'crypto assets.',
             Colors.white),


        item(
            AppImages.img_instant_withdraw,
            'INSTANT WITHDRAWAL',
            'EBP offers instant withdrawals for your crypto'
                'assets. Fast processing of withdrawal'
                ' requests is our priority and we'
                ' really mean it.',
            AppColors.scaffoldColor),


        item(
            AppImages.img_instant_withdraw,
            'FULLY TRANSPARENCY',
            'EBP believes in trust and transparency'
            ' that’s why entire system is transparent.'
            'Nothing is hidden and harmful'
            ' for any user.',
            Colors.white),


      ],
    );
  }


  Widget smallWidgets() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        item(
            AppImages.img_strong,
            'STRONG SECURITY',
            'We ensure your all crypto assets are safe'
                ' in EBP. High tech security measures'
                ' guarantee the safety of user’s'
                'crypto assets.',
            Colors.white),

        SizedBox(height: 15,),

        item(
            AppImages.img_instant_withdraw,
            'INSTANT WITHDRAWAL',
            'EBP offers instant withdrawals for your crypto'
                'assets. Fast processing of withdrawal'
                ' requests is our priority and we'
                ' really mean it.',
            AppColors.scaffoldColor),
        SizedBox(height: 15,),
        item(
            AppImages.img_instant_withdraw,
            'FULLY TRANSPARENCY',
            'EBP believes in trust and transparency'
                ' that’s why entire system is transparent.'
                'Nothing is hidden and harmful'
                ' for any user.',
            Colors.white),

      ],
    );
  }

  Widget mediumWidgets() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            item(
                AppImages.img_strong,
                'STRONG SECURITY',
                'We ensure your all crypto assets are safe'
                    ' in EBP. High tech security measures'
                    ' guarantee the safety of user’s'
                    'crypto assets.',
                Colors.white),


            item(
                AppImages.img_instant_withdraw,
                'INSTANT WITHDRAWAL',
                'EBP offers instant withdrawals for your crypto'
                    'assets. Fast processing of withdrawal'
                    ' requests is our priority and we'
                    ' really mean it.',
                AppColors.scaffoldColor),
          ]
        ),

        SizedBox(height: 20,),


        item(
            AppImages.img_instant_withdraw,
            'FULLY TRANSPARENCY',
            'EBP believes in trust and transparency'
                ' that’s why entire system is transparent.'
                'Nothing is hidden and harmful'
                ' for any user.',
            Colors.white),

      ],
    );
  }

  Widget item(String img,String name,String description,Color backGColor){
    return Container(
      width: 260,
      height: 260,
      decoration: BoxDecoration(
        color: backGColor,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppColors.secondaryColor,width: 1.5),
      ),
      child: Column(
        children: [
          const SizedBox(height: 20,),
          Image.asset(img,fit: BoxFit.cover,width: 70,),
          const SizedBox(height: 15,),
          Text('$name',style: GoogleFonts.poppins(color: AppColors.primaryColor,fontWeight: FontWeight.bold),),
          const SizedBox(height: 10,),
          Text(description,textAlign: TextAlign.center,style: GoogleFonts.poppins(color: Colors.black,fontWeight: FontWeight.normal),)
        ],
      ),
    );
  }




  
}
