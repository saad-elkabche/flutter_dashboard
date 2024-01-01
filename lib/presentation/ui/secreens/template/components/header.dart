import 'package:ayoub_baali/core/constants/app_color.dart';
import 'package:ayoub_baali/core/constants/app_images_icons.dart';
import 'package:ayoub_baali/core/constants/enums.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class MyHeader extends StatelessWidget implements PreferredSizeWidget {

  String name;
  SecreenSize size;
  void Function()? onMenuClicked;


  MyHeader({required this.name,required this.size,this.onMenuClicked});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: IconThemeData(color: AppColors.primaryColor),
      backgroundColor: kIsWeb?Colors.transparent:AppColors.primaryColor,
      title: Text('$name',style: GoogleFonts.poppins(fontSize: 20,fontWeight: FontWeight.bold,color: kIsWeb?Colors.black:Colors.white)),
      centerTitle:(kIsWeb && size!=SecreenSize.large) || !kIsWeb,
      elevation: 0,
      toolbarHeight: 80,
      leading:kIsWeb?null:const ImageIcon(AssetImage(AppImages.ic_home,),color:AppColors.secondaryColor,size: 35),
      actions: [
        if(kIsWeb)
          Padding(
            padding: const EdgeInsets.only(right: 18.0),
            child: Row(
              children: [
                const Icon(Icons.supervised_user_circle,color: AppColors.primaryColor,size: 38,),
                const SizedBox(width: 10,),
                Text('EBP User',style: Theme.of(context).textTheme.titleMedium!.copyWith(color: Colors.black,fontWeight: FontWeight.bold),)
              ],
            ),
          ),
        if(!kIsWeb)
           Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: IconButton(icon: Image.asset(AppImages.ic_dashboard_mob),onPressed:onMenuClicked,),
          )
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(60);
}


