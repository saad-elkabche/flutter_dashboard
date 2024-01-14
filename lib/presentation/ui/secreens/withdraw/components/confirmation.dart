import 'package:ayoub_baali/core/constants/app_color.dart';
import 'package:ayoub_baali/core/constants/app_images_icons.dart';
import 'package:ayoub_baali/core/constants/enums.dart';
import 'package:ayoub_baali/presentation/ui/components/button1.dart';
import 'package:ayoub_baali/presentation/ui/components/separator.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WithdrawConfirmation extends StatelessWidget {

  SecreenSize size;

  WithdrawConfirmation({required this.size}) ;




  @override
  Widget build(BuildContext context) {
    return Center(
      child: Align(
        alignment: Alignment.topCenter,
        child: Container(
          margin: EdgeInsets.only(top: 67),
          width:340,
          //height:500 ,
          padding:const EdgeInsets.all(18),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.black,width: 0.6)
          ),

          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Details',style: GoogleFonts.poppins(color: AppColors.primaryColor,fontSize: 20,fontWeight: FontWeight.bold),),
                    const ImageIcon(AssetImage(AppImages.ic_close),color: AppColors.primaryColor,)
                  ],
                ),
              ),
              const SizedBox(height: 25,),

              SizedBox(
                width:300 ,
                height: 320,
                child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MySeparator(height: 1,color: AppColors.secondaryColor,axe: Axis.vertical,),
                    Expanded(
                      child: Column(
                        children: [
                          item('Your Id', '456703'),
                          item('Coin', 'Litecoin'),
                          item('Amount', '0.0002'),
                          item('Fees', '0.0003'),
                          item('Address', 'QUeKnMSMSsl215Sjhs'),
                          item('Status', 'rejected',false,Colors.red),
                          item('Requested at', '2023-11-01 07:24:09'),
                          item('Proceed at', '2023-11-01 08:02:09',true),
                        ],
                      ),
                    ),
                    MySeparator(height: 1,color: AppColors.secondaryColor,axe: Axis.vertical,)

                  ],
                ),
              ),
              const SizedBox(height: 15,),
              Align(
                alignment: Alignment.centerRight,
                child: MySimpleBotton(name: 'Close',height: 35,width: 90,onclick: (){Navigator.pop(context,false);}),
              ),
              const SizedBox(height: 15,)
            ],
          ),
        ),
      ),
    );
  }

  Widget item(String name,String value,[bool isLast=false,Color valueColor=Colors.black]){
    return SizedBox(
      height: 40,
      width: double.infinity,
      child: Column(
        //mainAxisAlignment: MainAxisAlignment.,
        children: [
          MySeparator(color: AppColors.secondaryColor,),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(name,style: GoogleFonts.poppins(color: Colors.black,fontWeight: FontWeight.bold),),
                  Text(value,style: GoogleFonts.poppins(color:valueColor,fontWeight: FontWeight.bold),)
                ],
              ),
            ),
          ),
          if(isLast)
          MySeparator(color: AppColors.secondaryColor,),
        ],
      ),
    );
  }

}
