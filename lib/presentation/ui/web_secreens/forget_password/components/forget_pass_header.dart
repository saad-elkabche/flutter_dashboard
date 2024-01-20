import 'package:ayoub_baali/core/constants/app_images_icons.dart';
import 'package:ayoub_baali/core/constants/enums.dart';
import 'package:flutter/material.dart';




class ForgetPassHeader extends StatelessWidget {
  SecreenSize size;



   ForgetPassHeader({required this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height:size==SecreenSize.medium?150:170,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(size==SecreenSize.medium?AppImages.imgTabHeader:AppImages.imgPhoneHeader),
          fit: BoxFit.fill
        )
      ),
      child: Center(
        child: Image.asset(AppImages.img_logo_1,fit: BoxFit.cover,),
      ),
    );
  }
}
