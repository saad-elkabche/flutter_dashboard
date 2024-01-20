import 'package:ayoub_baali/core/constants/app_color.dart';
import 'package:ayoub_baali/core/constants/app_images_icons.dart';
import 'package:ayoub_baali/core/constants/enums.dart';
import 'package:ayoub_baali/presentation/ui/components/components.dart';
import 'package:ayoub_baali/presentation/ui/components/two_color_text.dart';
import 'package:ayoub_baali/presentation/ui/components/web_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:google_fonts/google_fonts.dart';


class ForgetPassForm extends StatefulWidget {
  SecreenSize size;




  ForgetPassForm({required this.size});

  @override
  State<ForgetPassForm> createState() => _ForgetPassFormState();
}

class _ForgetPassFormState extends State<ForgetPassForm> {
  int currentStep=1;

  late List<Widget> widgetsSteps;
  late List<Widget> footerWidgets;


  @override
  void initState() {
    super.initState();
    widgetsSteps=[
      //email
      Column(
        mainAxisSize:MainAxisSize.min,
        children: [
          Container(
            width: double.infinity,
            height: 50,
            color: AppColors.scaffoldColor.withOpacity(0.6),
            child: Center(
              child: Text('Verificaton code has been sent to your email',textAlign: TextAlign.center,style: GoogleFonts.poppins(color: Colors.black),),
            ) ,
          ),
          const SizedBox(height: 15,),
          WebFormField(hint: '', label: 'Enter your email here',labelColor: Colors.black,borderColor: AppColors.primaryColor,activeBorderColor: AppColors.primaryColor,),
        ],
      ),



      //otp
      Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text('Enter code sent',style: GoogleFonts.poppins(color: Colors.black,fontWeight: FontWeight.bold),),
          const SizedBox(height: 17,),
          OtpTextField(
            numberOfFields: 6,
            borderColor: AppColors.primaryColor,
            enabledBorderColor: AppColors.primaryColor,
            focusedBorderColor: AppColors.primaryColor,
            fieldWidth: widget.size==SecreenSize.small?36:50,
            showFieldAsBox: true,
            onCodeChanged: (String code) {
              //handle validation or checks here
            },
            // end onSubmit
          ),
        ],
      ),




      //reset pass
      Column(
        mainAxisSize:MainAxisSize.min,
        children: [
          WebFormField(hint: 'New Password',isPassWord: true,suffix: Icon(Icons.lock,color: AppColors.secondaryColor,), label: '',borderColor: AppColors.primaryColor,activeBorderColor: AppColors.primaryColor,),
          WebFormField(hint: 'Confirm New Password',isPassWord: true, label: '',borderColor: AppColors.primaryColor,suffix: Icon(Icons.lock,color: AppColors.secondaryColor,),activeBorderColor: AppColors.primaryColor,),
        ],
      ),




    ];

    footerWidgets=[

      Row(
        mainAxisAlignment:MainAxisAlignment.spaceBetween ,
        children: [
          Text('Login',style: GoogleFonts.poppins(color: AppColors.secondaryColor),),
          Text('Create account',style: GoogleFonts.poppins(color: AppColors.primaryColor),),
        ],
      ),



      Row(
        mainAxisAlignment:MainAxisAlignment.spaceBetween ,
        children: [
          Text('Resend code',style: GoogleFonts.poppins(color: AppColors.secondaryColor),),
          Text("Didn't recieve code",style: GoogleFonts.poppins(color: AppColors.primaryColor),),
        ],
      ),



      Row(
        mainAxisAlignment:MainAxisAlignment.spaceBetween ,
        children: [
          Text('Login',style: GoogleFonts.poppins(color: AppColors.secondaryColor),),
          Text('Create account',style: GoogleFonts.poppins(color: AppColors.primaryColor),),
        ],
      ),

    ];


  }

  @override
  Widget build(BuildContext context) {
    if(widget.size==SecreenSize.large){
      return largewidgets();
    }else if(widget.size==SecreenSize.medium){
      return mediumWidgets();
    }else{
      return smallWidgets();
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
                child: Image.asset(AppImages.img_forget_pass,fit: BoxFit.cover,),
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
  Widget smallWidgets() {
    return form();
  }
  Widget mediumWidgets() {
    return Center(
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
          child: form(),
      ),
    );
  }

  Widget form(){
    return Padding(
      padding:  EdgeInsets.symmetric(
          horizontal: widget.size!=SecreenSize.large?25:0
      ),
      child: Column(
        children: [

          const SizedBox(height: 20,),
          Stepper(stepCount: 3,size: widget.size,currentStep: currentStep,stepsNames: const ['reset password','email verification','Done']),
          const SizedBox(height: 20,),
          Text('Reset Password',style: GoogleFonts.poppins(color: AppColors.primaryColor,fontWeight: FontWeight.bold,fontSize: 25),),
          const SizedBox(height: 20,),
          widgetsSteps.elementAt(currentStep-1),
          SizedBox(height: widget.size!=SecreenSize.large?55:35,),

          MyCustomButton(
            name:currentStep>=3? 'Verify':'Submit',
            onClick: (){
            setState(() {
              if(currentStep<3){
                currentStep++;
              }
            });
            },
            color: AppColors.secondaryColor,
          ),
          const SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: footerWidgets.elementAt(currentStep-1),
          ),


          const SizedBox(height: 25,),


        ],
      ),
    );
  }
}


class Stepper extends StatelessWidget {
  int currentStep;
  int stepCount;
  Color activeStepColor;
  Color inactiveStepColor;
  List<String> stepsNames;

  SecreenSize size;


   Stepper({
     required this.stepCount,
     required this.currentStep,
     required this.stepsNames,
     required this.size,
     this.activeStepColor=AppColors.primaryColor,
     this.inactiveStepColor=Colors.white
   }) ;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:List.generate(stepCount, (index) => text(index))
          ),
        SizedBox(
          height: 70,
          width: double.infinity,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: double.infinity,
                //margin: EdgeInsets.only(bottom: 20,left: 50),
                height: 1.5,
                color: AppColors.primaryColor,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:List.generate(stepCount, (index) => step(index+1,stepsNames.elementAt(index), (index+1)<=currentStep)),
              )
            ],
          ),
        ),
      ],
    );
  }

  Widget step(int step,String name,bool isActive){
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
        color: isActive
            ?activeStepColor
            :inactiveStepColor,
        shape: BoxShape.circle,
        border: Border.all(color: Colors.black,width: 0.5),
      ),
      alignment: Alignment.center,
      child: Text(step.toString(),style: GoogleFonts.poppins(color: isActive?Colors.white:AppColors.primaryColor),),
    );
  }

  Widget text(int index){
    return Expanded(
        child: Center(
            child: Align(
              alignment: index==0?Alignment.centerLeft:index==stepCount-1?Alignment.centerRight:Alignment.center,
              child: Text(stepsNames.elementAt(index),
                textAlign: index!=stepCount-1 && index!= 0?TextAlign.center:null,
                style: GoogleFonts.poppins(color: Colors.black,fontSize: size==SecreenSize.small?10:null),
              ),
          )
      )
    );
  }

}

