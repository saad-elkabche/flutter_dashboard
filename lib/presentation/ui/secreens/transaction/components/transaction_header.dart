import 'package:ayoub_baali/core/constants/app_color.dart';
import 'package:ayoub_baali/core/constants/enums.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';






class TransactionHeader extends StatelessWidget {


  SecreenSize size;
  TransactionHeader({required this.size}) ;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 45,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      margin:  const EdgeInsets.symmetric(horizontal: 18),
      decoration: BoxDecoration(
        color: AppColors.primaryColor,
        borderRadius: BorderRadius.circular(5)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('History',style: GoogleFonts.poppins(color: Colors.white,fontWeight: FontWeight.bold),),

          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Filters',style: GoogleFonts.poppins(color: Colors.white,fontWeight: FontWeight.bold) ,),
              const Icon(Icons.filter_alt,color: AppColors.secondaryColor,)
            ],
          )
        ],
      ),
    );
  }
}
