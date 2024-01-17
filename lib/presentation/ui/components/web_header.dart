import 'package:ayoub_baali/core/constants/app_color.dart';
import 'package:ayoub_baali/core/constants/app_images_icons.dart';
import 'package:ayoub_baali/core/constants/enums.dart';
import 'package:ayoub_baali/presentation/ui/components/button1.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';




class WebHeader extends StatelessWidget {


   SecreenSize size;
   List<MenuItem> items;
   void Function(MenuItem)? onclick;
   VoidCallback? onLogin;
   VoidCallback? onSignUp;

   WebHeader({required this.size,required this.items,required this.onclick,this.onLogin,this.onSignUp});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 60,
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(color: Colors.grey,offset: Offset(0,2),blurRadius: 10,)
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [

          Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Image.asset(AppImages.img_logo,height: 40,fit: BoxFit.cover,)),

          if(size==SecreenSize.large)
            Expanded(
              child: Center(
                child: Row(
                mainAxisSize: MainAxisSize.min,
                children:List.generate(items.length, (index) => GestureDetector(
                    onTap: ()=>onclick?.call(items.elementAt(index)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(items.elementAt(index).name,
                        style: GoogleFonts.poppins(fontWeight: FontWeight.bold,color: AppColors.primaryColor),
                      ),
                    )
                )
                ),
                          ),
              ),
            ),

          if(size!=SecreenSize.small)
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                MySimpleBotton(name: 'Sign Up', width: 95,fontSize: 12, height: 30,onclick: onSignUp),
                const SizedBox(width: 10,),
                MySimpleBotton(name: 'Log IN',fontSize: 12, width: 85, height: 30,color: AppColors.primaryColor,onclick: onLogin),
                const SizedBox(width: 10,),
              ],
            )



        ],
      ),
    );
  }






}


class MenuItem{
  String name;
  String location;
  MenuItem(this.name,this.location);
}