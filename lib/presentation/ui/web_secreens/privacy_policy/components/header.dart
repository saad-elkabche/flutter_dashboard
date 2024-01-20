import 'package:ayoub_baali/core/constants/app_color.dart';
import 'package:ayoub_baali/core/constants/app_images_icons.dart';
import 'package:ayoub_baali/core/constants/enums.dart';
import 'package:ayoub_baali/presentation/ui/components/two_color_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';










class PrivacyPolicyHeader extends StatelessWidget {
  SecreenSize size;
  double width;


  PrivacyPolicyHeader({required this.width,required this.size});

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: MyClip(size),
      child: Container(
        width: width,
        height: size!=SecreenSize.small?300:250,
        decoration: const BoxDecoration(
          image:DecorationImage(image: AssetImage(AppImages.imgAboutUsHeader),fit: BoxFit.fill)
        ),
        child: Container(
          width: double.infinity,
          height: double.infinity,
          color: AppColors.primaryColor.withOpacity(0.9),
          alignment: Alignment.topCenter,
          child: Column(
            children: [
              SizedBox(height:size!=SecreenSize.small ?50:25,),
              TwoColorText(fontSize: 35,
                  textOne: 'Privacy ',
                  textTwo: 'Policy',
                  colorOne: Colors.white,
                  colortwo: AppColors.secondaryColor
              ),



            ],
          ),
        ),

      ),
    );
  }
}

class MyClip extends CustomClipper<Path>{
  SecreenSize secreenSize;

  MyClip(this.secreenSize);


  @override
  Path getClip(Size size) {

    double width=size.width;
    double height=size.height;


    double point1=height-(secreenSize==SecreenSize.small?50:80);
    double point2=height-(secreenSize==SecreenSize.small?100:150);


    Path path=Path()
    ..moveTo(0, height*0.7)
    ..quadraticBezierTo(width*0.25, height, width*0.5, point1)
    ..quadraticBezierTo(width*0.75, point2,width , height)
    ..lineTo(width,0)
    ..lineTo(0, 0)
    ..close();








    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }

}
