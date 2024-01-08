import 'package:ayoub_baali/core/constants/enums.dart';
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
    return ListView(
      children: [
        SizedBox(height: 40),
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
    );
  }

  Widget paymentGateway() {
    if(size==SecreenSize.large){
      return Row(
        children: [
          Expanded(flex: 3,child: PaymentGateway(size: size,height: 450)),
          Expanded(flex: 2,child:TradeCalculator(size: size,height: 450,)),
        ],
      );
    }
    return PaymentGateway(size: size,height:size==SecreenSize.small?350: 450);
  }

  Widget currencies() {
    if(size==SecreenSize.small){
      return const Padding(
        padding: const EdgeInsets.all(18.0),
        child: Preview(),
      );
    }else if( size ==SecreenSize.medium){
      return const Padding(
        padding: const EdgeInsets.all(8.0),
        child: CurrencyTable(),
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
