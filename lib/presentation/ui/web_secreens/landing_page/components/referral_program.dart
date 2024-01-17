import 'package:ayoub_baali/core/constants/app_color.dart';
import 'package:ayoub_baali/core/constants/app_images_icons.dart';
import 'package:ayoub_baali/core/constants/enums.dart';
import 'package:ayoub_baali/presentation/ui/components/two_color_text.dart';
import 'package:ayoub_baali/presentation/ui/components/web_back_decoration.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';



class ReferralProgram extends StatelessWidget {

  SecreenSize size;
  double width;
   ReferralProgram({required this.size,required this.width});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
       header(),
        if(size!=SecreenSize.small)
          largeMediumWidget(),

        if(size==SecreenSize.small)
          smallWidgets()


      ],
    );
  }

  Widget header()=> WebBackDecoration(
      decorationHeight: 230,
      containerHeight: 230,
      child: Column(
        mainAxisSize:MainAxisSize.min ,
        children: [
          TwoColorText(fontSize: 20,
              textOne: 'Referral ',
              textTwo: 'Program',
              colorOne: AppColors.secondaryColor,
              colortwo: Colors.white
          ),
          const SizedBox(height: 10,),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal:size!=SecreenSize.small?38.0:10),
            child: Text(
              'EBP has introduced a better and strong commission system for its networkers where\n'
                  'they can earn various commissions from etwork and its detail is mentioned:',
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(color: Colors.white,fontWeight: FontWeight.w500),
            ),
          )
        ],
      )
  );




  Widget smallWidgets(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [

        smallWidgetElement(
          AppImages.img1,
          'Earn 2% Commission for\n'
              'membership in Basic Lines\n'
              ' from 20 Levels of Network.',
        ),
        smallWidgetElement(
          AppImages.img2,
            'membership in Advance\n'
                'Lines from unlimited evels\n'
                'of Network.'
        ),
        smallWidgetElement(
          AppImages.img3,
            'Earn 5% Commission for\n'
                'Non-Flexible Investment\n'
                'in advance line of Network.'
        ),






        smallWidgetElement(
          AppImages.img4,
          'Earn 2% Commission for\n'
              'membership in Basic Lines\n'
              ' from 20 Levels of Network.',
        ),
        smallWidgetElement(
          AppImages.img5,
            'membership in Advance\n'
                'Lines from unlimited evels\n'
                'of Network.'
        ),
        smallWidgetElement(
          AppImages.img6,
            'Earn 5% Commission for\n'
                'Non-Flexible Investment\n'
                'in advance line of Network.\n'
        ),

      ],
    );
  }

  Widget smallWidgetElement(String img,String text){
    return SizedBox(
      height: 130,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0,vertical: 10),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(img,fit: BoxFit.cover,),
            const SizedBox(width:19 ,),
            Text(
              text,textAlign: TextAlign.start,style: GoogleFonts.poppins(color: Colors.black,fontWeight: FontWeight.normal),
            ),
          ],
        ),
      ),
    );
  }




  Widget largeMediumWidget(){
    return SizedBox(
      width: width*0.8,
      //height: 900,
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Center(
                  child: Image.asset(AppImages.img1),
                ),
              ),
              Expanded(
                child: Center(
                  child: Image.asset(AppImages.img2),
                ),
              ),
              Expanded(
                child: Center(
                  child: Image.asset(AppImages.img3),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20,),
          SizedBox(
            height: 60,
            width: width*0.8,
            child: Stack(
              alignment: Alignment.center,
              children: [
                SizedBox(
                  height: 60,
                  width: width*0.8,
                ),

                Container(
                  width: width*0.8,
                  height: 3,
                  color:AppColors.primaryColor,
                ),
                Row(
                  children: [
                    circle('01', AppColors.secondaryColor),
                    circle('02', AppColors.primaryColor),
                    circle('03', AppColors.secondaryColor),
                  ],
                )

              ],
            ),
          ),
          Row(
            children: [
              text(
                    'Earn 2% Commission for\n'
                    'membership in Basic Lines\n'
                    ' from 20 Levels of Network.',
              ),
              text(
                'membership in Advance\n'
                'Lines from unlimited evels\n'
                'of Network.'
              ),
              text(
                'Earn 5% Commission for\n'
                'Non-Flexible Investment\n'
                  'in advance line of Network.'
              ),

            ],
          ),




          const SizedBox(height: 30,),





          Row(
            children: [
              Expanded(
                child: Center(
                  child: Image.asset(AppImages.img4),
                ),
              ),
              Expanded(
                child: Center(
                  child: Image.asset(AppImages.img5),
                ),
              ),
              Expanded(
                child: Center(
                  child: Image.asset(AppImages.img6),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20,),
          SizedBox(
            height: 60,
            width: width*0.8,
            child: Stack(
              alignment: Alignment.center,
              children: [
                SizedBox(
                  height: 60,
                  width: width*0.8,
                ),

                Container(
                  width: width*0.8,
                  height: 3,
                  color:AppColors.primaryColor,
                ),
                Row(
                  children: [
                    circle('04', AppColors.secondaryColor),
                    circle('05', AppColors.primaryColor),
                    circle('06', AppColors.secondaryColor),
                  ],
                )

              ],
            ),
          ),
          Row(
            children: [
              text(
                'Earn 2% Commission for\n'
                    'membership in Basic Lines\n'
                    ' from 20 Levels of Network.',
              ),
              text(
                  'membership in Advance\n'
                      'Lines from unlimited evels\n'
                      'of Network.'
              ),
              text(
                  'Earn 5% Commission for\n'
                      'Non-Flexible Investment\n'
                      'in advance line of Network.\n'
              ),

            ],
          )


        ],
      ),
    );

  }
  Widget text(String text)=>Expanded(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 2.0),
          child: Text(
           text,textAlign: TextAlign.center,style: GoogleFonts.poppins(color: Colors.black,fontWeight: FontWeight.normal),
          ),
        ),
      )
  );

  Widget circle(String text,Color color){
    return Expanded(
      child: Center(
        child: Container(
          width: 50,
          height: 50,
          alignment: Alignment.center,
          decoration:  BoxDecoration(
              color: color,
              shape: BoxShape.circle
          ),
          child: Text('$text',style: GoogleFonts.poppins(color: Colors.white,fontWeight: FontWeight.bold),),
        ),
      ),
    );
  }


}
