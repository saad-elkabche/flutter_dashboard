import 'package:ayoub_baali/core/constants/app_color.dart';
import 'package:ayoub_baali/core/constants/app_images_icons.dart';
import 'package:ayoub_baali/presentation/ui/components/button1.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';





class LogOutPopUp extends StatelessWidget {

  double width;

   LogOutPopUp({required this.width}) ;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Material(
        color: Colors.transparent,
        child: Container(
          constraints:const  BoxConstraints(
            maxWidth: 600
          ),
          width: width*0.8,
          clipBehavior: Clip.hardEdge,
          decoration: const BoxDecoration(
            color: AppColors.scaffoldColor,
            boxShadow: [BoxShadow(color: Colors.grey,offset: Offset(4, 4),blurRadius: 10)],
            borderRadius: BorderRadius.only(topRight: Radius.circular(15),topLeft: Radius.circular(15),bottomRight: Radius.circular(50),bottomLeft: Radius.circular(50))
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: double.infinity,
                height: 40,
                color: AppColors.primaryColor,
                child: Center(
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      SizedBox(height: double.infinity,width: double.infinity,),
                      Positioned(
                          right: 4,
                          child: GestureDetector(
                              onTap: ()=>Navigator.of(context).pop(false),
                              child: const ImageIcon(AssetImage(AppImages.ic_close),color: AppColors.secondaryColor,))),
                      Text('Are you sure to Logout?',style: GoogleFonts.poppins(color: Colors.white,fontWeight: FontWeight.bold),),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Row(
                  mainAxisAlignment:MainAxisAlignment.spaceEvenly ,
                  children: [
                    MySimpleBotton(name: 'Close', width: 100, height: 40,color: AppColors.secondaryColor,onclick: ()=>Navigator.of(context).pop(false),),
                    MySimpleBotton(name: 'Log out',textColor: AppColors.secondaryColor, width: 110, height: 40,color: Colors.white,onclick: ()=>Navigator.of(context).pop(true),),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
