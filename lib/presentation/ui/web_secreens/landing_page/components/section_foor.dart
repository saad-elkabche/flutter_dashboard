import 'package:ayoub_baali/core/constants/app_color.dart';
import 'package:ayoub_baali/core/constants/app_images_icons.dart';
import 'package:ayoub_baali/core/constants/enums.dart';
import 'package:ayoub_baali/presentation/ui/components/two_color_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';







class SectionFour extends StatelessWidget {
  SecreenSize size;
  double width;



   SectionFour({required this.size,required this.width});

  @override
  Widget build(BuildContext context) {
    if(size==SecreenSize.large){
      return largeWidgets();
    }else if( size==SecreenSize.medium){
      return mediumWidgets();
    }else{
      return smallWidgets();
    }
  }

  Widget largeWidgets() {
    return Center(
      child: SizedBox(
        width: width*0.9,
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                    child: Center(
                      child: text('REGISTER ACCOUNT',
                          'You can easily signing up for EBP\n'
                          'account. Provide your essential\n'
                          'details and create a secure\n'
                          'login.'
                      ),
                    )
                ),
      
                Expanded(
                    child: Center(
                      child: text('DEPOSIT AS YOU LIKE',
                          'To deposit funds into your account,\n'
                              'follow a straightforward process. Your\n'
                              'required deposit mount will be based\n'
                              'on the investment plan you choose.'
                      ),
                    )
                ),
      
      
                Expanded(
                    child: Center(
                      child: text('WITHDRAWAL PROFIT',
                          'Withdrawal of assets is also easy and\n'
                              'simple. Make a withdrawal request in\n'
                              'your account and you will get your\n'
                              'funds instantly.'
                      ),
                    )
                ),
      
              ],
            ),
            const SizedBox(height: 30,),
            SizedBox(
              height: 40,
              width: width*0.9,
              child: Stack(
                alignment: Alignment.center,
                children: [

                  Container(
                    width: width*0.88,
                    height: 2,
                    color: AppColors.primaryColor,
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: Center(
                            child: Container(
                              width: 30,
                              height: 25,
                              decoration: BoxDecoration(
                                color: AppColors.secondaryColor,
                                borderRadius: BorderRadius.circular(13),
                              ),
                            ),
                          )
                      ),
                      Expanded(
                          child: Center(
                            child: Container(
                              width: 30,
                              height: 25,
                              decoration: BoxDecoration(
                                color: AppColors.primaryColor,
                                borderRadius: BorderRadius.circular(13),
                              ),
                            ),
                          )
                      ),
                      Expanded(
                          child: Center(
                            child: Container(
                              width: 30,
                              height: 25,
                              decoration: BoxDecoration(
                                color: AppColors.secondaryColor,
                                borderRadius: BorderRadius.circular(13),
                              ),
                            ),
                          )
                      ),
                    ],
                  )
                ],
              ),
            ),
            Row(
              children: [
                Expanded(
                    child:Center(
                      child: Image.asset(AppImages.img_1_section_4,fit: BoxFit.cover,height: 60),
                    )
                ),
                Expanded(
                    child:Center(
                      child: Image.asset(AppImages.img_2_section_4,fit: BoxFit.cover,height: 60),
                    )
                ),
                Expanded(
                    child:Center(
                      child: Image.asset(AppImages.img_3_section_4,fit: BoxFit.cover,height: 60),
                    )
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget mediumWidgets() {
    return Column(
      children: [
        TwoColorText(fontSize: 20, textOne: 'How to ', textTwo: 'join us?', colorOne: AppColors.primaryColor, colortwo: AppColors.secondaryColor),
        const SizedBox(height: 35,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            text('REGISTER ACCOUNT',
                'You can easily signing up for EBP\n'
                    'account. Provide your essential\n'
                    'details and create a secure\n'
                    'login.',
                AppImages.img_1_section_4
            ),
            text('WITHDRAWAL PROFIT',
                'Withdrawal of assets is also easy and\n'
                    'simple. Make a withdrawal request in\n'
                    'your account and you will get your\n'
                    'funds instantly.',
                AppImages.img_3_section_4
            ),
          ],
        ),
        const SizedBox(height: 20,),

        text('DEPOSIT AS YOU LIKE',
            'To deposit funds into your account,\n'
                'follow a straightforward process. Your\n'
                'required deposit mount will be based\n'
                'on the investment plan you choose.',
            AppImages.img_2_section_4
        ),
      ],
    );
  }

  Widget smallWidgets() {
    return Column(
      children: [
        TwoColorText(fontSize: 20, textOne: 'How to ', textTwo: 'join us?', colorOne: AppColors.primaryColor, colortwo: AppColors.secondaryColor),
        const SizedBox(height: 35,),
        text('REGISTER ACCOUNT',
            'You can easily signing up for EBP\n'
                'account. Provide your essential\n'
                'details and create a secure\n'
                'login.',
            AppImages.img_1_section_4
        ),
        const SizedBox(height: 10,),
        text('DEPOSIT AS YOU LIKE',
            'To deposit funds into your account,\n'
                'follow a straightforward process. Your\n'
                'required deposit mount will be based\n'
                'on the investment plan you choose.',
            AppImages.img_2_section_4
        ),
        const SizedBox(height: 10,),
        text('WITHDRAWAL PROFIT',
            'Withdrawal of assets is also easy and\n'
                'simple. Make a withdrawal request in\n'
                'your account and you will get your\n'
                'funds instantly.',
            AppImages.img_3_section_4
        ),
      ],
    );
  }
  
  
  

  Widget text(String title,String description,[String? img]){
    return Column(
      crossAxisAlignment:size==SecreenSize.large?CrossAxisAlignment.start:CrossAxisAlignment.center ,
      mainAxisSize: MainAxisSize.min,
      children: [
        if(size!=SecreenSize.large)
          Padding(
            padding: const EdgeInsets.only(bottom: 18.0),
            child: Image.asset(img!,fit: BoxFit.cover,width: 60,),
          ),

        Text(title,style: GoogleFonts.poppins(color: AppColors.primaryColor,fontWeight: FontWeight.bold,fontSize: 17),),
        const SizedBox(height: 10,),
        Text(description,textAlign: size==SecreenSize.large?TextAlign.start:TextAlign.center,style: GoogleFonts.poppins(color: Colors.black),)
      ],
    );
  }

}
