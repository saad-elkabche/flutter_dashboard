import 'package:ayoub_baali/core/constants/enums.dart';
import 'package:ayoub_baali/presentation/ui/components/components.dart';
import 'package:ayoub_baali/presentation/ui/secreens/my_invest/components/filters.dart';
import 'package:ayoub_baali/presentation/ui/secreens/my_invest/components/header.dart';
import 'package:ayoub_baali/presentation/ui/secreens/my_invest/components/order_by.dart';
import 'package:ayoub_baali/presentation/ui/secreens/my_invest/components/table.dart';
import 'package:ayoub_baali/presentation/ui/secreens/template/template_state.dart';
import 'package:flutter/material.dart';




class MyInvestSecreen extends StatefulWidget {


  MyInvestSecreen({Key? key}) : super(key: key);

  @override
  State<MyInvestSecreen> createState() => _MyInvestSecreenState();
}

class _MyInvestSecreenState extends State<MyInvestSecreen> {
  int currentIndex=0;
  late SecreenSize size;
  late double width;

  @override
  Widget build(BuildContext context) {
    size=TemplateState.sizeOf(context);
    width=TemplateState.widthOf(context);

    return Center(
      child:ListView(
        children: [

          SizedBox(height: 40,),
          MyInvestHeader(currentIndex: currentIndex,onClick: onHeaderTap,size: size),
          Filters(size: size),
          orders(),
          SizedBox(height: 25,),
          MyInvestTable(
            size: size,
            items: [
              Invest(amount: r'500.00$',dateTime: '2023-10-22 11.30 AM',expireAt: '2023-10-23'),
              Invest(amount: r'1000.00$',dateTime: '2023-10-22 11.30 AM',expireAt: '2023-10-23'),
              Invest(amount: r'1735.00$',dateTime: '2023-10-22 11.30 AM',expireAt: '2023-10-23'),
              Invest(amount: r'7565.00$',dateTime: '2023-10-22 11.30 AM',expireAt: '2023-10-23'),
              Invest(amount: r'10000.00$',dateTime: '2023-10-22 11.30 AM',expireAt: '2023-10-23'),
            ],
          ),
          const SizedBox(height: 20,)

        ],
      )
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



  void onHeaderTap(int index) {
    setState(() {
      currentIndex=index;
    });
  }
}
