import 'package:ayoub_baali/core/constants/app_color.dart';
import 'package:ayoub_baali/core/constants/app_images_icons.dart';
import 'package:ayoub_baali/core/constants/enums.dart';
import 'package:ayoub_baali/presentation/ui/components/two_color_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';




class PrivacyPolicyWidgets extends StatelessWidget {
  SecreenSize size;

   PrivacyPolicyWidgets({required this.size});

  @override
  Widget build(BuildContext context) {
    if(size==SecreenSize.small){
      return smallWidgets();
    }else{
      return largeWidgets();
    }
  }


  Widget img(){
    return Image.asset(AppImages.imgPrivacyPolicy,fit: BoxFit.cover,width: size==SecreenSize.small?150:null,);
  }
  Widget titre(){
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          TwoColorText(fontSize: 20, textOne: 'Terms & ', textTwo:'Conditions' , colorOne: AppColors.primaryColor, colortwo: AppColors.secondaryColor),
          SizedBox(height: 8,),
          Container(
            width: 60,
            height: 1.5,
            color: Colors.grey,
          )
        ],
      ),
    );

  }
  Widget content(){
    return Container(
      width: double.infinity,
      margin:  const EdgeInsets.symmetric(horizontal: 15),
      //padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 30),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
        boxShadow: const [BoxShadow(color: Colors.grey,offset: Offset(-4,4),blurRadius: 5,spreadRadius: -3)]
      ),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 5,
            color: AppColors.secondaryColor,
          ),
          const SizedBox(height: 70,),
          item(
            'For joining our business plans, your age must be 18-50 years old.'
          ),

          item(
              'The amount of all types of memberships will not be returned back to the users. '
          ),

          item(
              'You can not open your ADVANCE LINE until you activate your 1st two basic lines.'
          ),

          item(
              'You will have to apply all securities in your account for avoiding any loss or theft. '
          ),

          item(
              'Company has a right to modify its marketing plan to improve its business as well\n'
                  'as for the betterment of its community.'
          ),

          item(
              'In Flexible plan, you can withdraw your all asset at any time without any deduction\n'
                  'except withdrawal fee.'
          ),



          item(
              'Don’t share your password or login access with anyone otherwise company will ot\n'
                  'be responsible for your any loss. . '
          ),

          item(
              'No Commission or bonus will be given on the sale of Flexible plan while commissions\n'
                  'or bonuses will be given on the sale of Non-Flexible plan. '
          ),

          item(
              'In Flexible plan, you can withdraw your all asset at any time without any deduction\n'
                  'except withdrawal fee.'
          ),

          item(
              'The commission from advance line will be given according to the membership of users.\n'
                  ' Higher the membership, higher level of Advance line will be given'
          ),

          item(
              'Company is not offering fixed profit ratio to its users. Our profit ratio is based upon real \n'
                  'profit generation from crypto trading. Therefore, its rofit ratio will fluctuate from 2% to\n'
                  '10% per month.'
          ),


          item(
              'In Non-Flexible plan, your amount will be fixed for 24 months as per contract, If you want\n'
                  'In Non-Flexible plan, your amount will be fixed for 24 months as per contract, If you want'
          ),


          item(
              'We are offering our business services for all over the world. But where the crypto currencies\n'
                  'are not legal or prohibited, there it will be your wn responsibility to face any legal\n'
                  'consequences.'
          ),




        ],
      ),
    );
  }

  Widget item(String str){
    return ListTile(
      leading: ImageIcon(AssetImage(AppImages.ic_check),color: AppColors.secondaryColor,),
      title: Text(str,style: GoogleFonts.poppins(color: Colors.black,fontWeight: FontWeight.normal),),
    );
  }

  Widget smallWidgets() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Row(
            mainAxisAlignment:MainAxisAlignment.spaceBetween ,
            children: [
              titre(),
              img(),
            ],
          ),
        ),
        SizedBox(height: 20,),
        content()
      ],
    );
  }

  Widget largeWidgets() {
    return Padding(
      padding: const EdgeInsets.only(top: 48.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(flex: 4,child: content()),
          Expanded(flex: 2,child: img()),
        ],
      ),
    );
  }





}
