import 'package:ayoub_baali/core/constants/app_color.dart';
import 'package:ayoub_baali/core/constants/enums.dart';

import 'package:ayoub_baali/presentation/ui/secreens/template/template_state.dart';
import 'package:ayoub_baali/presentation/ui/secreens/withdraw/components/payment_gateway.dart';
import 'package:ayoub_baali/presentation/ui/secreens/withdraw/components/preview.dart';
import 'package:ayoub_baali/presentation/ui/secreens/withdraw/components/table.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';




class WithDrawSecreen extends StatelessWidget {


  late SecreenSize size;
  late double width;

  WithDrawSecreen();

  @override
  Widget build(BuildContext context) {

    size=TemplateState.sizeOf(context);
    width=TemplateState.widthOf(context);

    return ListView(
      children: [
        const SizedBox(height: 40,),
        paymentPreview(),

        if(size==SecreenSize.large)
          Center(
            child: Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Text('History',style: GoogleFonts.poppins(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
              ),
            ),
          ),

        const SizedBox(height: 10,),
        WithdrawTable(size: size,),
        const SizedBox(height: 10,),

      ],
    );
  }

  Widget paymentPreview() {
    if(size==SecreenSize.large){
      return Padding(
        padding: const EdgeInsets.all(18.0),
        child: Row(
          children: [
            Expanded(flex:4,child: PaymentGateway(size: size,height: 410,)),
            Expanded(flex:2,child: Preview(size: size,height: 410,)),
          ],
        ),
      );
    }
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          PaymentGateway(size: size,height: 450,),
          SizedBox(height: 20,),
          Preview(size: size,height: 310,)
        ],
      ),
    );
  }
}
