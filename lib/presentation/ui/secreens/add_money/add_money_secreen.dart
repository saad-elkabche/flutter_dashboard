import 'package:ayoub_baali/core/constants/app_color.dart';
import 'package:ayoub_baali/core/constants/app_images_icons.dart';
import 'package:ayoub_baali/core/constants/enums.dart';
import 'package:ayoub_baali/presentation/ui/components/app_header.dart';
import 'package:ayoub_baali/presentation/ui/secreens/add_money/components/confirmation.dart';
import 'package:ayoub_baali/presentation/ui/secreens/add_money/components/currency_table.dart';
import 'package:ayoub_baali/presentation/ui/secreens/add_money/components/payment_gateway.dart';
import 'package:ayoub_baali/presentation/ui/secreens/add_money/components/preview.dart';
import 'package:ayoub_baali/presentation/ui/secreens/add_money/components/second_currency_table.dart';
import 'package:ayoub_baali/presentation/ui/secreens/add_money/components/tabbed_page.dart';
import 'package:ayoub_baali/presentation/ui/secreens/add_money/components/trade_calculator.dart';
import 'package:ayoub_baali/presentation/ui/secreens/template/template_state.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';




class AddMoneySecreen extends StatefulWidget {


  AddMoneySecreen({Key? key}) : super(key: key);

  @override
  State<AddMoneySecreen> createState() => _AddMoneySecreenState();
}

class _AddMoneySecreenState extends State<AddMoneySecreen> {
  late SecreenSize size;

  late double width;

  int currentIndex=0;

  @override
  Widget build(BuildContext context) {
    size=TemplateState.sizeOf(context);
    width=TemplateState.widthOf(context);



    return Scaffold(
     appBar: MyHeader(
       name:'Add Money',
       size: size,
       leadingWidth: size!=SecreenSize.large?80:null,



       leading:size==SecreenSize.medium
           ? Row(
         children: [
           IconButton(onPressed: ()=>TemplateState.scaffoldStateOf(context).currentState!.openDrawer(),
               icon: Image.asset(AppImages.ic_dashboard_mob)),
           const ImageIcon(AssetImage(AppImages.ic_person),color: AppColors.secondaryColor,)
         ],
       ): IconButton(onPressed: ()=>TemplateState.scaffoldStateOf(context).currentState!.openDrawer(),
           icon: const Icon(Icons.arrow_back_ios,color: AppColors.secondaryColor,)),


       mobActions: size==SecreenSize.medium
       ?[

           const ImageIcon(AssetImage(AppImages.ic_notification),color: AppColors.secondaryColor,),

         const Icon(Icons.arrow_forward_ios,color: AppColors.secondaryColor,),
         const SizedBox(width: 5,)

       ]:[ ImageIcon(AssetImage(AppImages.ic_person),color: AppColors.secondaryColor,),SizedBox(width: 5,)],
     ),
      body: ListView(
        children: [
          const SizedBox(height: 40),



          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: paymentGateway(),
          ),

          const SizedBox(height: 10,),


          if(size==SecreenSize.large)
            Padding(padding: EdgeInsets.only(left: 18),child: Text('Deposit History',style: GoogleFonts.poppins(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),)),

          if(size==SecreenSize.medium)
            TabedPage(items: ['Deposit History','Trade Calculator'],currentIndex:currentIndex ,onClick: (index){
              setState(() {
                currentIndex=index;
              });
            },),

          const SizedBox(height: 20,),
          currencies()


        ],
      ),
    );
  }

  Widget paymentGateway() {
    if(size==SecreenSize.large){
      return Row(
        children: [
          Expanded(flex: 3,child: PaymentGateway(size: size,height: 350,onClick: showAddMoneyDialogue,)),
          Expanded(flex: 2,child:TradeCalculator(size: size,height: 350,)),
        ],
      );
    }
    return PaymentGateway(size: size,height:size==SecreenSize.small?350: 320,onClick: showAddMoneyDialogue,);
  }

  void showAddMoneyDialogue(){
    showDialog(context: context, builder: (context)=>AddMoneyConfirmation(size: size));
  }

  Widget currencies() {
    if(size==SecreenSize.small){
      return const Padding(
        padding:  EdgeInsets.all(18.0),
        child: Preview(),
      );
    }else if( size ==SecreenSize.medium){
      return  Padding(
        padding:  EdgeInsets.all(8.0),
        child: currentIndex==0?CurrencyTable():TradeCalculator(size: size,height: 350,),
      );
    }else{
      return const Row(
        children: [
           Expanded(child:CurrencyTable()),
          Expanded(child: CurrencyTableSecond()),
        ],
      );
    }
  }
}
