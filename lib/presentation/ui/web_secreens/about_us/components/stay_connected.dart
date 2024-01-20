import 'package:ayoub_baali/core/constants/app_color.dart';
import 'package:ayoub_baali/presentation/ui/components/text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';





class AboutUsStayConnected extends StatelessWidget {
  double width;

  AboutUsStayConnected({required this.width});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: width*0.8,
        height: 200,
        constraints: const BoxConstraints(
          maxWidth: 800
        ),
        decoration: BoxDecoration(
          color: AppColors.primaryColor,
          borderRadius: BorderRadius.circular(19)
        ),
        child:Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Stay connected with us for regular updates',textAlign: TextAlign.center,style: GoogleFonts.poppins(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),),
              const SizedBox(height: 25,),
              Container(
                width: 400,
                height: 50,
                margin: const EdgeInsets.symmetric(horizontal: 12),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
              ),
                child: Row(
                  children: [
                    Expanded(child: MyTextFormField(hint: 'Enter your Email',hintFontSize: 16,isBoldHint: false,)),
                    Container(
                      width: 50,
                      height: 50,
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                        color: AppColors.secondaryColor,
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(Icons.arrow_forward_sharp,color: Colors.white,),
                    )
                  ],
                ),

          ),
          ]
        )
        ) ,
      ),
    );
  }
}
