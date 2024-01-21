
import 'package:ayoub_baali/core/constants/app_color.dart';
import 'package:ayoub_baali/core/constants/enums.dart';
import 'package:ayoub_baali/presentation/ui/components/button1.dart';
import 'package:ayoub_baali/presentation/ui/components/custom_button.dart';
import 'package:ayoub_baali/presentation/ui/components/drop_down_list.dart';
import 'package:ayoub_baali/presentation/ui/components/text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';







class PaymentGateway extends StatelessWidget {

  SecreenSize size;
  double height;
  VoidCallback? onclick;

   PaymentGateway({required this.size,required this.height,this.onclick});

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      height: height,
      decoration: BoxDecoration(
        color: AppColors.scaffoldColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: [

          header('Withdraw'),

          const SizedBox(height: 10,),

          if(size!=SecreenSize.small)
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(child: choosePayment()),
              Expanded(child: enterAmount()),
            ],
          ),

          if(size==SecreenSize.small)
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                choosePayment(),
                enterAmount()
              ],
            ),

          paymentAddress(),


          SizedBox(height: 40,),



         MyCustomButton(name: 'Proceed',
           color: AppColors.secondaryColor,
           textColor: Colors.white,
           height: 40,
            onClick: onclick,
         ),
          const SizedBox(height: 30,)
        ],
      ),
    );
  }

  Widget enterAmount(){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Amount(USD)',style: GoogleFonts.poppins(color:Colors.black,fontWeight: FontWeight.bold),),
          const SizedBox(height: 10,),
          Container(
            width: double.infinity,
            height: 40,
            //margin:const EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(4),
              border: Border.all(color: AppColors.secondaryColor,width: 1)
            ),
            child: Column(
              children: [
                Expanded(child: MyTextFormField(hint: '0',textInputType: TextInputType.number,isBoldHint: false,hintFontSize: 14,)),
              ],
            ),

          ),
          const SizedBox(height: 3,),
          if(size!=SecreenSize.small)
          Text('Between 1 to 100',style: GoogleFonts.poppins(color:Colors.black),)
        ],
      ),
    );
  }

  Widget paymentAddress(){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(' Payment Address',style: GoogleFonts.poppins(color:Colors.black,fontWeight: FontWeight.bold),),
          const SizedBox(height: 10,),
          Container(
            width: double.infinity,
            height: 40,
            //margin:const EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(4),
                border: Border.all(color: AppColors.secondaryColor,width: 1)
            ),
            child: Column(
              children: [
                Expanded(child: MyTextFormField(hint: 'Enter your payment Address',isBoldHint: false,hintFontSize: 14,)),
              ],
            ),

          ),
          const SizedBox(height: 3,),
          if(size!=SecreenSize.small)
            Text('Between 1 to 100',style: GoogleFonts.poppins(color:Colors.black),)
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

  Widget choosePayment() {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text('Payement Gateway',style: GoogleFonts.poppins(color:Colors.black,fontWeight: FontWeight.bold),),
          const SizedBox(height: 10,),
          DropDownList(items: const ['Litecoin','Dogecoin'],borderColor: AppColors.secondaryColor,hint: 'Choose Gateway',),
        ],
      ),
    );
  }
}
