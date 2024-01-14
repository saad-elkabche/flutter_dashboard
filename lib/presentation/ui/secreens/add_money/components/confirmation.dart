import 'package:ayoub_baali/core/constants/app_color.dart';
import 'package:ayoub_baali/core/constants/app_images_icons.dart';
import 'package:ayoub_baali/core/constants/enums.dart';
import 'package:ayoub_baali/presentation/ui/components/button1.dart';
import 'package:ayoub_baali/presentation/ui/components/separator.dart';
import 'package:ayoub_baali/presentation/ui/components/text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AddMoneyConfirmation extends StatelessWidget {

  SecreenSize size;

  AddMoneyConfirmation({required this.size}) ;


  final largeWidth=450.0;
  final smallWidth=310.0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Align(
        alignment: Alignment.topCenter,
        child: Container(

          width:size==SecreenSize.large?largeWidth: smallWidth,
          height:305 ,
          padding:const EdgeInsets.all(8),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.black,width: 0.6)
          ),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 5,),
              Row(
                mainAxisAlignment:MainAxisAlignment.spaceBetween ,
                children: [
                  Text('Payment Address',style: GoogleFonts.poppins(color: AppColors.primaryColor,fontWeight: FontWeight.bold,fontSize: 18)),
                  const ImageIcon(AssetImage(AppImages.ic_close),color: AppColors.primaryColor,)
                ],
              ),


              const SizedBox(height: 25,),

              copy(),

              const SizedBox(height: 15,),
              Text('Please send LTC to the above given address, your payment  will be\nautomatically approved once it reaches the  given  address after few\nconfirmations.',style: GoogleFonts.poppins(color: Colors.black,fontSize: 12,fontWeight: FontWeight.normal,)),


              const SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [

                  MySimpleBotton(name: 'Close',color: AppColors.secondaryColor, width: 90, height: 35,onclick: ()=>Navigator.of(context).pop(false)),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
  Widget copy(){
    return Container(
      //width: double.infinity,
      width:size==SecreenSize.large?largeWidth: smallWidth,
      height: 40,
      //margin:const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(4),
          border: Border.all(color: AppColors.secondaryColor,width: 1)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [

         Expanded(child: Text('IDHVDHGVDGHGDVGDGDGKJNZLMSML',overflow: TextOverflow.ellipsis,style: GoogleFonts.poppins(color: Colors.black,fontWeight: FontWeight.bold),)),

          Container(
            width: 40,
              height: 40,
            decoration: BoxDecoration(
              color: AppColors.secondaryColor,
              borderRadius: BorderRadius.circular(3)
            ),
            child: const Icon(Icons.copy,color: Colors.white,),
          )
        ],
      ),

    );
  }
}
