import 'package:ayoub_baali/core/constants/app_color.dart';
import 'package:ayoub_baali/core/constants/app_images_icons.dart';
import 'package:ayoub_baali/core/constants/enums.dart';
import 'package:ayoub_baali/presentation/ui/components/button1.dart';
import 'package:ayoub_baali/presentation/ui/components/components.dart';
import 'package:ayoub_baali/presentation/ui/components/text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';





class TwoFactorAuthenticator extends StatelessWidget {
  SecreenSize size;


   TwoFactorAuthenticator({required this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      width:  double.infinity,

      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: AppColors.scaffoldColor
      ),
      child: Column(
        children: [

          if(size==SecreenSize.large)
          Container(
            width: double.infinity,
            height: 45,
            color: AppColors.primaryColor,
            alignment: Alignment.center,
            child: Text('Two Factor Authenticator',style: GoogleFonts.poppins(fontSize: 17,color: Colors.white,fontWeight: FontWeight.bold),),
          ),

          const SizedBox(height: 15,),




          enterAmount(),

          const SizedBox(height: 15,),

          ConstrainedBox(
              constraints: const BoxConstraints(
                maxWidth: 220
              ),
              child: Image.asset(AppImages.img_qr_code,fit: BoxFit.cover,)),


          const SizedBox(height: 18,),
          MyCustomButton(name: 'Enable Two Factor Authenticator',
            color:size==SecreenSize.large
                ?
            AppColors.secondaryColor
                :
            AppColors.primaryColor
            ,),

          const SizedBox(height: 25,),




        ],
      ),
    );
  }


  Widget enterAmount(){
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child:   Container(
        width: double.infinity,
        height: 40,
        //margin:const EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(4),
            border: Border.all(color: AppColors.secondaryColor,width: 1)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [

            Expanded(child: MyTextFormField(hint: 'WBLDB23KOPST4CREP',hintFontSize: 14,)),

            if(size==SecreenSize.small)
              MySimpleBotton(name: 'USDT', fontSize: 10,width: 90, height: 40,onclick: (){},borderRadius: 4,),

            if(size==SecreenSize.large)
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    color: AppColors.secondaryColor,
                    borderRadius: BorderRadius.circular(3)
                ),
                child:const Icon(Icons.copy,color: Colors.white,),
              ),


          ],
        ),

      ),
    );
  }
}


