import 'package:ayoub_baali/core/constants/app_color.dart';
import 'package:ayoub_baali/core/constants/enums.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';



class KycTitle extends StatelessWidget {

  SecreenSize size;

  KycTitle({required this.size});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Align(
        alignment: size==SecreenSize.small?Alignment.center:Alignment.centerLeft,
        child: Column(
          crossAxisAlignment: size==SecreenSize.small?CrossAxisAlignment.center:CrossAxisAlignment.start,
          children: [


            Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: size==SecreenSize.small?MainAxisAlignment.center:MainAxisAlignment.start,
              children: [
                Text('KYC Information',style: GoogleFonts.poppins(color: AppColors.primaryColor,fontWeight: FontWeight.bold,fontSize: 25),),

                if(size!=SecreenSize.small)
                  Padding(
                    padding: const EdgeInsets.only(left: 12.0),
                    child: verified(),
                  )
              ],
            ),
           const  SizedBox(height: 10,),

            Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: size==SecreenSize.small?MainAxisAlignment.center:MainAxisAlignment.start,
              children: [
                Text('Please verify KYC information',style: GoogleFonts.poppins(color: AppColors.secondaryColor,),),

                if(size==SecreenSize.small)
                  Padding(
                    padding: const EdgeInsets.only(left: 12.0),
                    child: verified(),
                  )


              ],
            )


          ],
        ),
      ),
    );
  }

  Widget verified()=> Container(
    //width: 110,
    height: 15,
    padding: const EdgeInsets.symmetric(horizontal: 4,vertical: 2),
    decoration: BoxDecoration(
      color: AppColors.secondaryColor,
      borderRadius: BorderRadius.circular(7),
    ),
    child: Text('Unverefied',style: GoogleFonts.poppins(color: Colors.white,fontSize: 8),),
  );


}
