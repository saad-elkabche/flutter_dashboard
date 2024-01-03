import 'package:ayoub_baali/core/constants/app_color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PlandHeader extends StatelessWidget {
  const PlandHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 18),
      padding: EdgeInsets.only(left: 12),
      width: double.infinity,
      height: 50,
      alignment: Alignment.centerLeft,
      decoration: BoxDecoration(
        color: AppColors.primaryColor,
        borderRadius: BorderRadius.circular(8)
      ),
      child: Text('EBP Plans',style: GoogleFonts.poppins(color: Colors.white,fontWeight: FontWeight.bold),),
    );
  }
}
