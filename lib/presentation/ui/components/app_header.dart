import 'package:ayoub_baali/core/constants/app_color.dart';
import 'package:ayoub_baali/core/constants/app_images_icons.dart';
import 'package:ayoub_baali/core/constants/enums.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class MyHeader extends StatelessWidget implements PreferredSizeWidget {

  String name;
  SecreenSize size;
  Widget? leading;
  List<Widget>? mobActions;
  double? leadingWidth;

  void Function()? onMenuClicked;


  MyHeader({required this.name,this.leadingWidth,this.leading,this.mobActions,required this.size,this.onMenuClicked});

  @override
  Widget build(BuildContext context) {
    return AppBar(

      backgroundColor:size==SecreenSize.large?Colors.transparent:AppColors.primaryColor,
      title: Text('$name',style: GoogleFonts.poppins(fontSize: 20,fontWeight: FontWeight.bold,color: size==SecreenSize.large?Colors.black:Colors.white)),
      centerTitle:size!=SecreenSize.large,
      elevation: 0,
      toolbarHeight: 80,
      leadingWidth: leadingWidth,
      leading:size!=SecreenSize.large?leading:null,
      actions:size!=SecreenSize.large


          ?
      mobActions
          :
      [Padding(
        padding: const EdgeInsets.only(right: 18.0),
        child: Row(
          children: [
            const Icon(Icons.supervised_user_circle,color: AppColors.primaryColor,size: 38,),
            const SizedBox(width: 10,),
            Text('EBP User',style: Theme.of(context).textTheme.titleMedium!.copyWith(color: Colors.black,fontWeight: FontWeight.bold),)
          ],
        ),
      ),]

    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(60);
}


