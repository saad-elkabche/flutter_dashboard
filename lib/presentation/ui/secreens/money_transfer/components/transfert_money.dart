import 'package:ayoub_baali/core/constants/app_color.dart';
import 'package:ayoub_baali/core/constants/enums.dart';
import 'package:ayoub_baali/presentation/ui/components/components.dart';
import 'package:ayoub_baali/presentation/ui/components/text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';



class TransfertMoney extends StatelessWidget {
   SecreenSize size;
   double height;

   TransfertMoney({required this.size,required this.height});

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

            if(size==SecreenSize.large)
              header('Transfert Your Money'),

            size==SecreenSize.large
            ?
            Row(
              children: [
                Expanded(child: enterAmount()),
                Expanded(child: receiverEmail())
              ],
            )
            :
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    enterAmount(),
                    receiverEmail()
                  ],
                ),

            changeText('Limit 0.00000 USDT - 500000.0000 USDT'),
            const SizedBox(height: 2,),
            changeText("chanrge 0.0000 USDT - 2.0000%"),
            const SizedBox(height: 20,),
            MyCustomButton(name: 'Proceed',
              color: size==SecreenSize.large?AppColors.secondaryColor:AppColors.primaryColor,
              textColor: Colors.white,
              height: 40,),
            const SizedBox(height: 15,),

          ],
        )
    );
  }
   Widget changeText(String text){
     return Padding(
       padding: const EdgeInsets.symmetric(horizontal: 18.0),
       child: Row(
         children: [
           Container(
             width: 3,
             height: 3,
             decoration:const BoxDecoration(
                 color: Colors.black,
                 shape: BoxShape.circle
             ) ,
           ),
           SizedBox(width: 10,),
           Text(text,style: GoogleFonts.poppins(color: Colors.black,fontWeight: FontWeight.w500),),
         ],
       ),
     );
   }
   Widget enterAmount(){
     return Padding(
       padding: const EdgeInsets.all(18.0),
       child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
         children: [
           Text('Sender Amount',style: GoogleFonts.poppins(color: Colors.black),),
           const SizedBox(height: 8,),
           Container(
             width: double.infinity,
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

                 Expanded(child: MyTextFormField(hint: 'Enter Amount',textInputType: TextInputType.number,hintFontSize: 14,)),
                 MySimpleBotton(name: 'USDT', fontSize: 10,width: 90, height: 40,onclick: (){},borderRadius: 4,)
               ],
             ),

           ),
         ],
       ),
     );
   }
   Widget receiverEmail(){
     return Padding(
       padding: const EdgeInsets.all(18.0),
       child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
         children: [
           Text('Reciever Email',style: GoogleFonts.poppins(color: Colors.black),),
           const SizedBox(height: 8,),
           Container(
             width: double.infinity,
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

                 Expanded(child: MyTextFormField(hint: 'Enter Email',hintFontSize: 14,)),
                 //MySimpleBotton(name: 'USDT', fontSize: 10,width: 90, height: 40,onclick: (){},borderRadius: 4,)
               ],
             ),

           ),
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
