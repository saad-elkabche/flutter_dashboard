import 'package:ayoub_baali/core/constants/app_color.dart';
import 'package:ayoub_baali/core/constants/app_images_icons.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';



class CurrencyTableSecond extends StatelessWidget {
  const CurrencyTableSecond({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          myTableRow('Litecoin', AppImages.ic_light_coin, '0.00026', '2023-11-01 07:24'),
          myTableRow('Dogecoin', AppImages.ic_light_coin, '0.00026', '2023-11-01 07:24'),
          myTableRow('Litecoin', AppImages.ic_doge_coin, '0.00026', '2023-11-01 07:24'),
          myTableRow('Dogecoin', AppImages.ic_light_coin, '0.00026', '2023-11-01 07:24'),
          myTableRow('Dogecoin', AppImages.ic_doge_coin, '0.00026', '2023-11-01 07:24'),
          myTableRow('Dogecoin', AppImages.ic_doge_coin, '0.00026', '2023-11-01 07:24'),
        ],
      ),
    );
  }
  Widget myTableRow(String coin,String coinIcon,String amount,String dateTime){
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Container(
          width: double.infinity,
          height: 50,
          decoration: BoxDecoration(
              color: AppColors.scaffoldColor,
              borderRadius: BorderRadius.circular(8),
              boxShadow: [BoxShadow(color: Colors.grey,offset: Offset(1,1),)]
          ),
          child: Row(
            children: [
              Expanded(child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(coinIcon),
                    SizedBox(width: 8,),
                    Text(coin,style: GoogleFonts.poppins(color: Colors.black),)
                  ],
                ),
              ),
              ),
              Expanded(child:Center(child: Text(amount,style: GoogleFonts.poppins(color: Colors.black),)) ),
              Expanded(child:Center(child: Text(dateTime,style: GoogleFonts.poppins(color: Colors.black),)) )
            ],
          )
      ),
    );
  }
}
