import 'package:ayoub_baali/core/constants/app_color.dart';
import 'package:ayoub_baali/core/constants/enums.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';




class ProfileHeader extends StatelessWidget {
  SecreenSize size;

  ProfileHeader({required this.size});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 70,
          height: 70,
          decoration: const BoxDecoration(
            color: AppColors.secondaryColor,
            shape: BoxShape.circle,
          ),
          alignment: Alignment.center,
          child: const Icon(Icons.person,color: Colors.white,size: 50,),
        ),
        SizedBox(height: 10,),
        Text('Mr Hassan',style: GoogleFonts.poppins(color: AppColors.primaryColor,fontWeight: FontWeight.bold,),)
      ],
    );
  }
}
