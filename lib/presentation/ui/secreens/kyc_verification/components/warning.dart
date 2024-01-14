import 'package:ayoub_baali/core/constants/app_color.dart';
import 'package:ayoub_baali/core/constants/app_images_icons.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';





class KycWarning extends StatelessWidget {

   KycWarning({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 5),
          margin: const EdgeInsets.only(right: 15,top: 20),
          height: 50,
          decoration: const BoxDecoration(
            color: AppColors.primaryColor,
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(18),
              bottomLeft: Radius.circular(18)
            )
          ),
          child:  Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
             const Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: const Icon(Icons.warning_amber,color: Colors.white,),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0,top: 5,right: 8),
                child: Text('Please verify your KYC information before any\nwithdraw action',
                  style: GoogleFonts.poppins(color: Colors.white,fontSize: 10),),
              ),
              const ImageIcon(AssetImage(AppImages.ic_close),color: AppColors.secondaryColor,size: 10,)
            ],
          ),
        ),
      ),
    );
  }
}
