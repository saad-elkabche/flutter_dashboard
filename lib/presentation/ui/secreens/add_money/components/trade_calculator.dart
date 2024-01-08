import 'package:ayoub_baali/core/constants/app_color.dart';
import 'package:ayoub_baali/core/constants/app_images_icons.dart';
import 'package:ayoub_baali/core/constants/enums.dart';
import 'package:ayoub_baali/presentation/ui/components/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';




class TradeCalculator extends StatelessWidget {
  SecreenSize size;
  double height;

  TradeCalculator({required this.size,required this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      margin: EdgeInsets.symmetric(horizontal: 7),
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        color: AppColors.scaffoldColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment:CrossAxisAlignment.start ,
        children: [
          header('Trade Calculator'),
          const SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Text('Amount',style: GoogleFonts.poppins(color: Colors.black,fontWeight: FontWeight.bold),),
          ),
          const SizedBox(height: 10,),


          currencyContainer(r'5$',null , null),
          const SizedBox(height: 15,),
          currencyContainer(r'0.4445f63$',AppImages.ic_light_coin , 'LTC'),
          const SizedBox(height: 15,),
          currencyContainer(r'12.35483$',AppImages.ic_doge_coin , 'Doge'),
          const SizedBox(height: 25,),
          MyCustomButton(name: 'Calculate',width: double.infinity,height: 35,)
        ],
      ),
    );
  }

  Widget currencyContainer(String amount,String? icon,String? currencyName){
    return Container(
      width: double.infinity,
      height: 40,
      margin:const EdgeInsets.symmetric(horizontal: 10),
      padding:const EdgeInsets.symmetric(horizontal: 3),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(4),
          border: Border.all(color: AppColors.secondaryColor,width: 1)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(amount,style: GoogleFonts.poppins(color: Colors.black),),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              if(currencyName!=null)
              Text(currencyName,style: GoogleFonts.poppins(color: Colors.black),),
              SizedBox(width: 3,),
              if(icon!=null)
              Image.asset(icon,fit: BoxFit.cover,height: 22,)
            ],
          )
        ],
      ),

    );
  }
  Widget header(String name){
    return Container(
      width: double.infinity,
      height: 45,
      color: AppColors.primaryColor,
      child: Center(
        child: Text('$name',style: GoogleFonts.poppins(color: Colors.white,fontWeight:FontWeight.bold),),
      ),
    );
  }
}
