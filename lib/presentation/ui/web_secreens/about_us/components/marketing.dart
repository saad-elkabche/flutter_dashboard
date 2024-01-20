import 'package:ayoub_baali/core/constants/app_color.dart';
import 'package:ayoub_baali/core/constants/app_images_icons.dart';
import 'package:ayoub_baali/core/constants/enums.dart';
import 'package:ayoub_baali/presentation/ui/components/two_color_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class AboutUsMarketing extends StatelessWidget {

  SecreenSize size;
  double width;
   AboutUsMarketing({required this.size,required this.width}) ;

  @override
  Widget build(BuildContext context) {

    if(size==SecreenSize.small){
      return Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: Column(
          children: [
            title(),
            SizedBox(height: 15,),
            picture(),
            SizedBox(height: 10,),
            description(),
            SizedBox(height: 10,),
          ],
        ),
      );
    }else{
      return Row(
        mainAxisAlignment:MainAxisAlignment.spaceEvenly,
        //crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 18.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                title(),
                const SizedBox(height: 10,),
                SizedBox(
                    width: width<830?width-400:null,
                    child: description())
              ],
            ),
          ),
          picture()
        ],
      );
    }


  }

  Widget title(){
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: size==SecreenSize.small?CrossAxisAlignment.center:CrossAxisAlignment.start,
      children: [
        Text('MARKETING',style: GoogleFonts.poppins(color: AppColors.primaryColor,fontWeight: FontWeight.bold,fontSize: 20),),
        const SizedBox(height: 10,),
        Container(
          width: 70,
          height: 1.5,
          color: Colors.grey,
        )
      ],
    );
  }

  Widget description(){
    return ConstrainedBox(
      constraints: const BoxConstraints(
          maxWidth: 450
      ),
      child: Text(
        'Marketing plan is considered to be a back bone of every company. A strong'
        'Marketing plan is considered to be a back bone of every company. A strong'
        'and balanced marketing plan is a strong foundation of a company. EBP has '
        'developed a strong and balanced marketing plan for its networkers that can'
        'be very helpful to boost up their passive income with zero liability. EBP offers'
        'multiple secures of income for its users that can be very helpful to fulfill their '
        'dreams.',
        style: GoogleFonts.poppins(height: 1.5,color: Colors.black,fontWeight: FontWeight.normal),
      ),
    );
  }

  Widget picture(){
    return ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: 350
        ),
        child: Image.asset(AppImages.img_marketing,fit: BoxFit.cover,));
  }



}
