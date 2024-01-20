import 'package:ayoub_baali/core/constants/app_color.dart';
import 'package:ayoub_baali/core/constants/enums.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';




class MembershipHeader extends StatelessWidget {
  SecreenSize size;

   MembershipHeader({required this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 40,
      margin: const EdgeInsets.symmetric(horizontal: 30),
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: AppColors.primaryColor,
        borderRadius: BorderRadius.circular(8)
      ),
      child: Row(
        mainAxisAlignment:size!=SecreenSize.large? MainAxisAlignment.spaceBetween:MainAxisAlignment.start,
        children: getChildren(),
      ),
    );
  }
  List<Widget> getChildren(){
    if(size==SecreenSize.small){
      return [
        Text('Current Membership:Basic',style: GoogleFonts.poppins(color: Colors.white,fontWeight: FontWeight.bold),),
        Text(r'Price:$5',style: GoogleFonts.poppins(color: Colors.white,fontWeight: FontWeight.bold),),

      ];
    }else if(size==SecreenSize.medium){
      return [
        Text('Membership',style: GoogleFonts.poppins(color: Colors.white,fontWeight: FontWeight.bold),),
        Text(r'Current Membership:   Basic  Price:$5',style: GoogleFonts.poppins(color: Colors.white,fontWeight: FontWeight.bold),)
      ];
    }else{
      return [
        Padding(
          padding: const EdgeInsets.only(left: 18.0),
          child: Text(r'Memberships',style: GoogleFonts.poppins(color: Colors.white,fontWeight: FontWeight.bold),),
        )
      ];
    }
  }

}


