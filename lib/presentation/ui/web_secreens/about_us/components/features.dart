import 'package:ayoub_baali/core/constants/app_color.dart';
import 'package:ayoub_baali/core/constants/enums.dart';
import 'package:ayoub_baali/presentation/ui/components/two_color_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';



class AboutUsFeatures extends StatelessWidget {

  SecreenSize size;
  double width;

  AboutUsFeatures({required this.size,required this.width});

  @override
  Widget build(BuildContext context) {
    if(size==SecreenSize.small){
      return Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            item('OUR ',
                'VISION',
                'Being an investment and network marketing company, our mission'
                'is to introduce an excellent and unique investment plans as well as'
                'marketing products for investors and networkers. It can be helpful for '
                'them to earn a secure income permanently. Our vision is to provide'
                'various stable and secure income plans for our users to earn '
                'long-term and risk-free income.',
                350 ),
            const SizedBox(height: 25,),

            item("OUR ", "MISSION",
            'Our mission is to provide effective and useful knowledge of digital '
            'earning skills that can be helpful for our global users to boost their'
            'income levels. For this purpose, our digital platform provides different'
            'educational and knowledge material to its global users that can be'
            'very useful in understanding different digital sources of'
                'income.',
                350),
            const SizedBox(height: 25,),
            item('FLEXIBLE ', 'PLAN',
                'This is our unique and secure product for investors. It has been '
                'designed for the mental satisfaction of our global users. In this plan, '
                r'you can invest a minimum 20$. The maximum limit of investing'
                r'amount in this plan is 10,000$ in a single account. You can earn up to'
                '7% profit every month. The main uniqueness of this plan is that you'
                'can withdraw your principal asset at any time without any hesitation'
                'and deduction.  ',
                 350),
            const SizedBox(height: 25,),
            item('NON-FLEXIBLE ', "PLAN",
                'In non-flexible plan, you have to keep deposit your asset for the period'
                r'of 24 months. You can invest minimum 20$ and maximum 10,000$ in'
                'this plan. You can earn 2% to 10% profit on monthly basis. In this plan if'
                'you want to withdraw your actual amount before your contract period '
                'i.e. 2 years, company will apply 20% deduction fees and rest of your'
                'asset will be released. There will be an instant deposit and withdraw '
                'system',
                350)

          ],
        ),
      );
    }else{
      return Column(
        children: [

          Row(
            children: [



              Expanded(
                  child: item('OUR',
                      'VISION',
                      'Being an investment and network marketing company, our mission'
                          'is to introduce an excellent and unique investment plans as well as'
                          'marketing products for investors and networkers. It can be helpful for '
                          'them to earn a secure income permanently. Our vision is to provide'
                          'various stable and secure income plans for our users to earn '
                          'long-term and risk-free income.',
                      350 ),
              ),

              Expanded(
                  child:item("OUR", "MISSION",
                      'Our mission is to provide effective and useful knowledge of digital '
                          'earning skills that can be helpful for our global users to boost their'
                          'income levels. For this purpose, our digital platform provides different'
                          'educational and knowledge material to its global users that can be'
                          'very useful in understanding different digital sources of'
                          'income.',
                      350),
              )





            ],
          ),

          const SizedBox(height: 40,),


          Row(
            children: [




              Expanded(
                  child:Center(
                    child:item('FLEXIBLE', 'PLAN',
                        'This is our unique and secure product for investors. It has been '
                            'designed for the mental satisfaction of our global users. In this plan, '
                        r'you can invest a minimum 20$. The maximum limit of investing'
                        r'amount in this plan is 10,000$ in a single account. You can earn up to'
                        '7% profit every month. The main uniqueness of this plan is that you'
                            'can withdraw your principal asset at any time without any hesitation'
                            'and deduction.  ',
                        350) ,
                  )
              ),



              Expanded(
                  child: Center(
                    child:  item('NON-FLEXIBLE', "PLAN",
                        'In non-flexible plan, you have to keep deposit your asset for the period'
                        r'of 24 months. You can invest minimum 20$ and maximum 10,000$ in'
                        'this plan. You can earn 2% to 10% profit on monthly basis. In this plan if'
                            'you want to withdraw your actual amount before your contract period '
                            'i.e. 2 years, company will apply 20% deduction fees and rest of your'
                            'asset will be released. There will be an instant deposit and withdraw '
                            'system',
                        350),
                  )
              )

            ],
          )

        ],
      );
    }
  }


  Widget item(String nameTextOne,String nameTextTwo,String description,double? height){
    return SizedBox(
      height: height,
      child: Column(
        crossAxisAlignment: size==SecreenSize.small?CrossAxisAlignment.center:CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: TwoColorText(fontSize:20 ,
                textOne: '$nameTextOne ',
                textTwo: nameTextTwo,
                colorOne: AppColors.primaryColor,
                colortwo: AppColors.secondaryColor
            ),
          ),
          const SizedBox(height: 20,),
          Expanded(
            child: Container(
              margin:const EdgeInsets.symmetric(horizontal: 15),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(14),
                boxShadow:const [
                  BoxShadow(color: Colors.grey,offset: Offset(4,4),blurRadius: 15)
                ] 
              ),
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: 7,
                    color:AppColors.secondaryColor,
                  ),
                  const SizedBox(height: 15,),
                  Expanded(
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(description,style: GoogleFonts.poppins(color: Colors.black)),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }




}
