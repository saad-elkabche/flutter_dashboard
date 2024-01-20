import 'package:ayoub_baali/core/constants/app_color.dart';
import 'package:ayoub_baali/core/constants/app_images_icons.dart';
import 'package:ayoub_baali/core/constants/enums.dart';
import 'package:ayoub_baali/presentation/ui/components/components.dart';
import 'package:ayoub_baali/presentation/ui/components/two_color_text.dart';
import 'package:ayoub_baali/presentation/ui/components/web_form_field.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class SignForm extends StatelessWidget {
  SecreenSize size;
  VoidCallback? register;
  VoidCallback? forgetPass;



  SignForm({required this.size,this.register,this.forgetPass});

  @override
  Widget build(BuildContext context) {
    if(size==SecreenSize.large){
      return largewidgets();
    }else{
      return smallMediumWidgets();
    }
  }

  Widget largewidgets() {
    return Row(
      children: [
        Expanded(
          flex: 2,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(28.0),
                child: Image.asset(AppImages.img_sign_up,fit: BoxFit.cover,),
              ),
            )
        ),
        Expanded(
            flex: 3,
            child: Center(
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 40,horizontal: 20),
                margin: const EdgeInsets.symmetric(horizontal: 15),
                constraints: const BoxConstraints(
                  maxWidth: 650
                ),
                decoration: BoxDecoration(
                  border: Border.all(width: 1.5,color: AppColors.primaryColor),
                  borderRadius: BorderRadius.circular(20)
                ),
                child: form()
              ),
            )
        )
      ],
    );
  }


  Widget form(){
    return Padding(
      padding:  EdgeInsets.symmetric(
        horizontal: size!=SecreenSize.large?25:0
      ),
      child: Column(
        children: [
          titre(),
          const SizedBox(height: 20,),
          if(size!=SecreenSize.small)
          Row(
            children: [
              Expanded(child: WebFormField(hint: '',borderRadius: 20,borderColor: AppColors.secondaryColor,label:'First Name:' ,leading: const Icon(Icons.person,color: AppColors.secondaryColor,),)),
              const SizedBox(width: 10,),
              Expanded(child: WebFormField(hint: '',borderRadius: 20,borderColor: AppColors.secondaryColor,label:'Last Name:' ,leading: const Icon(Icons.person,color: AppColors.secondaryColor,)))
            ],
          ),

          if(size==SecreenSize.small)
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                WebFormField(hint: '',borderRadius: 20,borderColor: AppColors.secondaryColor,label:'First Name:' ,leading: const Icon(Icons.person,color: AppColors.secondaryColor,),),
                const SizedBox(height: 15,),
                WebFormField(hint: '',borderRadius: 20,borderColor: AppColors.secondaryColor,label:'Last Name:' ,leading: const Icon(Icons.person,color: AppColors.secondaryColor,))
              ],
            ),



          const SizedBox(height: 15,),

          WebFormField(hint: '', label: 'Email:',leading: Icon(Icons.email,color: AppColors.secondaryColor,),borderRadius: 20,borderColor: AppColors.secondaryColor,),

          const SizedBox(height: 15,),


          WebFormField(hint: '',
            suffix:const Padding(
              padding:  EdgeInsets.only(right: 12.0),
              child:  ImageIcon(AssetImage(AppImages.ic_eye),color: AppColors.secondaryColor,),
            ),
            label: 'Password:',
            leading: const Icon(Icons.lock,color: AppColors.secondaryColor,),
            borderRadius: 20,
            isPassWord: true,
            controller: TextEditingController(),
            borderColor: AppColors.secondaryColor,),

          const SizedBox(height: 15,),

          //if(size!=SecreenSize.large)
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Icon(Icons.check_circle,color: AppColors.secondaryColor,size: 14,),
                  Text('Remember Me',style: GoogleFonts.poppins(color: Colors.black,fontWeight: FontWeight.bold),)
                ],
              ),


              GestureDetector(
                  onTap: ()=>forgetPass?.call(),
                  child: Text('Forget Password?',style: GoogleFonts.poppins(color: AppColors.primaryColor,fontWeight: FontWeight.bold),))


            ],
          ),



           SizedBox(height: size!=SecreenSize.large?55:35,),

          MyCustomButton(name: 'Register',onClick: register,color: size==SecreenSize.large?AppColors.secondaryColor:AppColors.primaryColor,),

          const SizedBox(height: 35,),

          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: 20,
                height: 1.5,
                color: AppColors.primaryColor,
              ),
              TwoColorText(fontSize: 13, textOne: 'Aleady have an account? ', textTwo: 'Sign in', colorOne: Colors.black, colortwo: AppColors.secondaryColor),
              Container(
                width: 20,
                height: 1.5,
                color: AppColors.primaryColor,
              )
            ],
          )

        ],
      ),
    );
  }




  Widget titre(){
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text('Sign Up',style: GoogleFonts.poppins(color: AppColors.primaryColor,fontWeight: FontWeight.bold,fontSize: 25),),
        if(size!=SecreenSize.large)
          Padding(
            padding: const EdgeInsets.only(top: 10.0,bottom: 20),
            child: Text('sign up to your account',style:GoogleFonts.poppins(color: Colors.black,fontWeight: FontWeight.w500)),
          )
      ],
    );
  }

  Widget smallMediumWidgets() {
    return form();
  }
}
