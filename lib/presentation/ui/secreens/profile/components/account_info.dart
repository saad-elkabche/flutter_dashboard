import 'package:ayoub_baali/core/constants/app_color.dart';
import 'package:ayoub_baali/core/constants/app_images_icons.dart';
import 'package:ayoub_baali/presentation/ui/components/components.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';






class AccountInfo extends StatelessWidget {

  VoidCallback? onLogout;
   AccountInfo({this.onLogout});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ConstrainedBox(
        constraints: const BoxConstraints(
          maxWidth: 600
        ),
        child: Column(
          children: [
            item(AppImages.ic_user_check, 'Verifications', 'verified', Icons.arrow_forward_ios_outlined),
            item(AppImages.ic_file, 'Flexible Plan', r'100$', Icons.arrow_forward_ios_outlined),
            item(AppImages.ic_referral_link, 'Referral Link', 'abhdfjsls41s5f2x5q3', Icons.copy),
            item(AppImages.ic_person, 'Registration Info', 'abcxyz1234@gmail.com', Icons.remove_red_eye_rounded),
            item(AppImages.ic_account_twitter, 'Twitter', 'Unliked',Icons.arrow_forward_ios_outlined ),
            SizedBox(height: 30,),
            MyCustomButton(name: 'Log Out',color: Colors.grey,onClick: onLogout,)
          ],
        ),
      ),
    );
  }

  Widget item(dynamic icon,String title,String desc,dynamic iconTriling ){
    return ListTile(
      leading: icon is String
      ?
        Image.asset(icon,width: 25,fit: BoxFit.cover,)
        :
      Icon(icon,color: AppColors.secondaryColor),
      title: Text(title,style: GoogleFonts.poppins(color: AppColors.primaryColor,fontWeight: FontWeight.bold),),
      subtitle: Text(desc,style: GoogleFonts.poppins(color: Colors.black,fontWeight: FontWeight.normal),),
      trailing: iconTriling is String
      ?
        ImageIcon(AssetImage(iconTriling),color: AppColors.secondaryColor,)
          :
      Icon(iconTriling,color: AppColors.secondaryColor),
    );
  }


}
