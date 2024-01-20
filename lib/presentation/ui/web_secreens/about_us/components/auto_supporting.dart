import 'package:ayoub_baali/core/constants/app_color.dart';
import 'package:ayoub_baali/presentation/ui/components/two_color_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';






class AutoSupporting extends StatelessWidget {
  const AutoSupporting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: AppColors.scaffoldColor.withOpacity(0.7),
      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 30),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TwoColorText(fontSize: 22, textOne: 'AUTO SUPPORTING ', textTwo: 'SYSTEM', colorOne: AppColors.primaryColor, colortwo: AppColors.secondaryColor),
          const SizedBox(height: 20,),
          ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 700
            ),
            child: Text(
              'Team Support is an essential part of Network Marketing. Most of the people join the network marketing profession because it'
              ' is considered a supporting and helping system for the new peoples as compared to any other traditional systems. EBP has '
              'introduced a very unique and superb Auto Supporting System (ASS), where every senior can easily support his team members '
              'and get maximum commission. In this system every person will receive 40% membership commission from the basic lines of his'
              ' advance line. If a senior as a new referral and he wants to get 40% membership commission, he can directly refer that person '
              'in network as a result that person will be placed in the basic lines of his advanced line and 40% commission will be rewarded'
              ' to him. In this way, every senior could get 40% direct commission and team support would also be done for his network.'
              ' This Auto Supporting System would become very helpful to increase the network of team members as'
              ' well as their earnings. so that they can boost their earning levels with mental satisfaction.',

              style: GoogleFonts.poppins(color: Colors.black,fontWeight: FontWeight.normal,height: 1.5),
              textAlign: TextAlign.center,

            ),
          )
        ],
      ),
    );
  }
}
