import 'package:ayoub_baali/core/constants/app_color.dart';
import 'package:ayoub_baali/core/constants/app_images_icons.dart';
import 'package:ayoub_baali/core/constants/enums.dart';
import 'package:ayoub_baali/presentation/ui/components/two_color_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class WhyNeedJoinUs extends StatelessWidget {
  SecreenSize size;
  double width;
  WhyNeedJoinUs({required this.size,required this.width}) ;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TwoColorText(fontSize: 30, textOne: 'Why Nee To ', textTwo: 'join EBP', colorOne: AppColors.primaryColor, colortwo: AppColors.secondaryColor),
        const SizedBox(height: 35,),

        if(size!=SecreenSize.large)
          smallMediumWidgets(),

        if(size==SecreenSize.large)
          largeWidgets(),

      ],
    );
  }

  Widget smallMediumWidgets() {
    return Container(
      width: width*0.9,
      padding: EdgeInsets.symmetric(horizontal: 15,vertical: 30),
      decoration: BoxDecoration(
        color: AppColors.scaffoldColor,
        borderRadius: BorderRadius.circular(30),
        //border: Border.all(color: Colors.black,width: 1),
        boxShadow: const [
          BoxShadow(color: Colors.grey,offset: Offset(4,4),blurRadius: 10)
        ]
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          item(
              'Secure and long-term earning plans. Flexible and'
                  ' 100% risk-free investment plans.'
          ),

          item(
              'Cash your funds instantly to any crypto exchange.'
          ),

          item(
              'No Worries for the principal amount, you can cash'
                  'back your asset without any deduction.'
          ),

          item(
              'Every person with a different financial background'
                  'can easily become a part of our community.'
          ),


          item(
              'Deposit your funds from any crypto exchange.'

          ),
          item(
              'Risk-free earning plans for networkers and investors '
                  'without any liability.'
          ),

          item(
              'You will receive ROI until you withdraw your amount.'
          ),

          item(
              'Multiple earning sources for networkers to boost their'
                  'earning levels.'
          ),

          item(
              'Auto supporting system where you can earn an'
                  ' unlimited 0% commission and support your team'
                  'members'
          ),
        ],
      ),
    );
  }



  Widget largeWidgets() {
    return Row(
      mainAxisAlignment:MainAxisAlignment.spaceEvenly ,
      children: [
        Container(
          width: width*0.4,
          height: 400,
          decoration: BoxDecoration(
            color: AppColors.primaryColor,
            borderRadius: BorderRadius.circular(26)
          ),
          child: Column(
            mainAxisAlignment:MainAxisAlignment.center ,
            children: [
              item(
                'Secure and long-term earning plans. Flexible and'
                ' 100% risk-free investment plans.'
              ),

              item(
                  'Cash your funds instantly to any crypto exchange.'
              ),

              item(
                  'No Worries for the principal amount, you can cash'
                      'back your asset without any deduction.'
              ),

              item(
                  'Every person with a different financial background'
                      'can easily become a part of our community.'
              ),


              item(
                  'Deposit your funds from any crypto exchange.'

              ),




            ],
          ),
        ),



        Container(
          width: width*0.4,
          height: 400,
          decoration: BoxDecoration(
              color: AppColors.primaryColor,
              borderRadius: BorderRadius.circular(26)
          ),
          child: Column(
          mainAxisAlignment:MainAxisAlignment.center,
          children: [
              item(
                  'Risk-free earning plans for networkers and investors '
                      'without any liability.'
              ),

              item(
                  'You will receive ROI until you withdraw your amount.'
              ),

              item(
                  'Multiple earning sources for networkers to boost their'
                      'earning levels.'
              ),

              item(
                  'Auto supporting system where you can earn an'
                      ' unlimited 0% commission and support your team'
                    'members'
              ),







            ],
          ),
        )

      ],
    );
  }

  Widget item(String item){
    return ListTile(
      leading: ImageIcon(AssetImage(AppImages.ic_check),color: AppColors.secondaryColor,),
      title: Text(item,
        style: GoogleFonts.poppins(
            color: size==SecreenSize.large?Colors.white:Colors.black,
          fontWeight:FontWeight.w400
        ),),
    );
  }


}
