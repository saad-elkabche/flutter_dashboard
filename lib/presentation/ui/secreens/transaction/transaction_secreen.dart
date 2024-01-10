import 'package:ayoub_baali/core/constants/enums.dart';
import 'package:ayoub_baali/presentation/ui/components/components.dart';
import 'package:ayoub_baali/presentation/ui/secreens/template/template_state.dart';
import 'package:ayoub_baali/presentation/ui/secreens/transaction/components/order_by.dart';
import 'package:ayoub_baali/presentation/ui/secreens/transaction/components/table.dart';
import 'package:ayoub_baali/presentation/ui/secreens/transaction/components/transaction_header.dart';
import 'package:flutter/material.dart';




class TransactionSecreen extends StatelessWidget {

  late SecreenSize size;
  late double width;

  TransactionSecreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    size=TemplateState.sizeOf(context);
    width=TemplateState.widthOf(context);

    return ListView(
      children: [
        const SizedBox(height: 40,),
        TransactionHeader(size: size),
        const SizedBox(height: 20,),
        orders(),
        SizedBox(height: 25,),
        TransactionTable(size: size),
        SizedBox(height: 25,),
      ],
    );
  }

  Widget orders(){
    if(size==SecreenSize.small){
      return Row(
        children: [
          Expanded(child: Center(child: OrderBy(name: 'Order By Type',size: size,items: const ['Flexible','Non-Flexible'],))),
          Expanded(child: Center(child: OrderBy(name: 'Order By Filter',size: size,items: const ['This year','This month','This week','This day'],))),
        ],
      );
    }
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0),
      child: MainContainer(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 17.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(width: 15,),
                Expanded(
                    child:Row(
                      children: [
                        Expanded(child: OrderBy(name: 'Order By Type',size: size,items: const ['Flexible','Non-Flexible'],)),
                        Expanded(child: OrderBy(name: 'Order By Filter',size: size,items: const ['This year','This month','This week','This day'],)),
                      ],
                    )
                ),
                const Expanded(
                    child: Center(
                      child: Align(
                          alignment: Alignment.topRight,
                          child: Icon(Icons.cancel_outlined,color: Colors.black87,)),
                    )
                )
              ],
            ),
          )
      ),
    );
  }
}
