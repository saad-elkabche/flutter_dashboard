import 'package:ayoub_baali/core/constants/app_color.dart';
import 'package:ayoub_baali/core/constants/app_images_icons.dart';
import 'package:ayoub_baali/core/constants/enums.dart';
import 'package:ayoub_baali/presentation/ui/components/components.dart';
import 'package:ayoub_baali/presentation/ui/components/web_form_field.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';





class ChangePassForm extends StatelessWidget {
  SecreenSize size;


   ChangePassForm({required this.size});

  @override
  Widget build(BuildContext context) {
    if(size==SecreenSize.large){
       return Padding(
         padding: const EdgeInsets.symmetric(horizontal: 38.0),
         child: Column(
           crossAxisAlignment:CrossAxisAlignment.start ,
           children: [
             SizedBox(height: 90,),
             Text('Change Password',style: GoogleFonts.poppins(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
             const SizedBox(height: 20,),
             Container(
               padding: EdgeInsets.symmetric(horizontal: 25,vertical: 30),
               decoration: BoxDecoration(
                 color: AppColors.scaffoldColor,
                 borderRadius: BorderRadius.circular(20),

                 boxShadow: const [
                   BoxShadow(color: Colors.grey,offset: Offset(4,4),blurRadius: 10)
                 ]
               ),
               child:form() ,
             ),
           ],
         ),
       );
    }else{
      return Column(
        children: [
          SizedBox(height: 90,),
          Text('Change Password',style: GoogleFonts.poppins(color: AppColors.primaryColor,fontSize: 20,fontWeight: FontWeight.bold),),
          const SizedBox(height: 40,),
          form()
        ],
      );

    }
  }


  Widget form(){
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: size!=SecreenSize.large?20:0),
      child: ConstrainedBox(
        constraints:  BoxConstraints(
          maxWidth: size!=SecreenSize.large?700:double.infinity
        ),
        child: Column(
          children: [
            WebFormField(hint: '',
              label: 'Current Password',
              isPassWord: true,
              controller: TextEditingController(),
              labelColor: Colors.black,
              borderColor: AppColors.secondaryColor,
              borderRadius: 2,
              fillColor: Colors.white,
              suffix: const Padding(
                padding:  EdgeInsets.only(right: 10.0),
                child: ImageIcon(AssetImage(AppImages.ic_eye),color: AppColors.secondaryColor,),
              ),
            ),

            const SizedBox(height: 25,),

            WebFormField(hint: '',
              label: 'New Password',
              isPassWord: true,
              controller: TextEditingController(),
              labelColor: Colors.black,
              borderColor: AppColors.secondaryColor,
              borderRadius: 2,
              fillColor: Colors.white,
              suffix: const Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: ImageIcon(AssetImage(AppImages.ic_eye),color: AppColors.secondaryColor,),
              ),
            ),
            const SizedBox(height: 25,),
            WebFormField(hint: '',
              label: 'Confirm Password',
              isPassWord: true,
              fillColor: Colors.white,
              controller: TextEditingController(),
              labelColor: Colors.black,
              borderColor: AppColors.secondaryColor,
              borderRadius: 2,
              suffix: const Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: ImageIcon(AssetImage(AppImages.ic_eye),color: AppColors.secondaryColor,),
              ),
            ),

            const SizedBox(height: 40,),
            
            
            MyCustomButton(name: 'Change',color: size!=SecreenSize.large?AppColors.primaryColor:AppColors.secondaryColor,)


          ],
        ),
      ),
    );
  }

}
