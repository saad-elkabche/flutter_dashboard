import 'package:ayoub_baali/core/constants/app_color.dart';
import 'package:ayoub_baali/core/constants/enums.dart';
import 'package:ayoub_baali/presentation/ui/components/button1.dart';
import 'package:ayoub_baali/presentation/ui/components/components.dart';
import 'package:ayoub_baali/presentation/ui/components/drop_down_list.dart';
import 'package:ayoub_baali/presentation/ui/components/text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';





class PaymentGateway extends StatelessWidget {
  SecreenSize size;
  double height;
  void Function()? onClick;
   PaymentGateway({required this.size,this.onClick,required this.height});

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
            header("Add Money"),
          const SizedBox(height: 10,),
          Center(
            child:Align(
              alignment: size==SecreenSize.small?Alignment.center:Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Text(
                  'Payment Gateway',
                  style: GoogleFonts.poppins(fontSize: size==SecreenSize.large?14:18,
                      fontWeight: size==SecreenSize.large?FontWeight.normal:FontWeight.bold,
                    color: size==SecreenSize.large?Colors.black:AppColors.primaryColor
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: DropDownList(items: ['Litecoin','Dogecoin'], hint: 'Choose Gateway'),
          ),
          const SizedBox(height: 30,),
          changeText('Limit 1.00 - 100000 USD'),
          const SizedBox(height: 2,),
          changeText("change USD = 1%"),

          SizedBox(height: 40,),

         if(size==SecreenSize.small)
           enterAmount(),
         const SizedBox(height: 30,),

         MyCustomButton(name: 'Proceed',
           color: size==SecreenSize.large?AppColors.secondaryColor:AppColors.primaryColor,
           textColor: Colors.white,
           onClick: onClick,
           height: 40,),
          const SizedBox(height: 30,)
        ],
      ),
    );
  }

  Widget enterAmount(){
    return Container(
      width: double.infinity,
      height: 40,
      margin:const EdgeInsets.symmetric(horizontal: 20),
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
  Widget chooseGatway(){
    return Container(
      width: double.infinity,
      clipBehavior: Clip.hardEdge,
      margin: EdgeInsets.symmetric(horizontal: 15,vertical: 8),
      decoration: BoxDecoration(
        color: AppColors.secondaryColor,
        borderRadius: BorderRadius.circular(3.5)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            height: 38,
            padding: const EdgeInsets.symmetric(horizontal: 7),
            decoration: BoxDecoration(
              color: Colors.white,
                border: Border.all(color: AppColors.secondaryColor,width: 1),
                  borderRadius: BorderRadius.circular(3.5)
            ),
            child:const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Choose Gateway'),
                Icon(Icons.arrow_drop_down,color: AppColors.secondaryColor,)
              ],
            ) ,
          ),
          if(size!=SecreenSize.small)
            ...tabWebWidget(),
        ],
      ),
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
          Text(text,style: GoogleFonts.poppins(color: Colors.black),),
        ],
      ),
    );
  }


  List<Widget> tabWebWidget(){
    return [
      chooseItem('Litecoin'),
      Container(
        color: Colors.white,
        height: 1.5,
        width: double.infinity,
      ),
      chooseItem('Dogecoin'),
    ];
  }

  Widget chooseItem(String name){
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 5),
      child: Text('$name',style: GoogleFonts.poppins(color: Colors.white,fontWeight: FontWeight.normal),),
    );
  }

}
