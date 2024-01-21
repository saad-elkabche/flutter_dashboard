import 'package:ayoub_baali/core/constants/app_color.dart';
import 'package:ayoub_baali/core/constants/app_images_icons.dart';
import 'package:ayoub_baali/core/constants/enums.dart';
import 'package:ayoub_baali/presentation/ui/components/app_header.dart';
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

    return Scaffold(
      appBar: MyHeader(
          name:'Transactions',
          size: size,
          leadingWidth: size!=SecreenSize.large?80:null,
          leading: Row(
            children: [
              IconButton(
                  onPressed: ()=>TemplateState.scaffoldStateOf(context).currentState!.openDrawer(),
                  icon: Image.asset(AppImages.ic_dashboard_mob)
              ),
              const ImageIcon(AssetImage(AppImages.ic_person),color: AppColors.secondaryColor,)
            ],
          ),
          mobActions:const [
            ImageIcon(AssetImage(AppImages.ic_notification),color: AppColors.secondaryColor,),
            Icon(Icons.arrow_forward_ios,color: AppColors.secondaryColor,),
            SizedBox(width: 5,)
          ]
      ) ,
      body:  ListView(
        children: [
          const SizedBox(height: 40,),
          TransactionHeader(size: size),
          const SizedBox(height: 20,),
          orders(),
          SizedBox(height: 55,),
          TransactionTable(size: size),
          SizedBox(height: 25,),
        ],
      ),
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
                  flex: 3,
                    child:Row(
                      children: [
                        Expanded(child: OrderBy(name: 'Order By Type',size: size,items: const ['Flexible','Non-Flexible'],)),
                        Expanded(child: OrderBy(name: 'Order By Filter',size: size,items: const ['This year','This month','This week','This day'],)),
                      ],
                    )
                ),
                const Expanded(
                  flex: 2,
                    child: Center(
                      child: Align(
                          alignment: Alignment.topRight,
                          child: ImageIcon(AssetImage(AppImages.ic_close),color: AppColors.primaryColor,)
                      ),
                    )
                )
              ],
            ),
          )
      ),
    );
  }
}
