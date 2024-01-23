import 'package:ayoub_baali/core/constants/app_color.dart';
import 'package:ayoub_baali/core/constants/app_images_icons.dart';
import 'package:ayoub_baali/core/constants/enums.dart';
import 'package:ayoub_baali/presentation/ui/components/app_header.dart';
import 'package:ayoub_baali/presentation/ui/components/components.dart';
import 'package:ayoub_baali/presentation/ui/secreens/my_invest/components/filters.dart';
import 'package:ayoub_baali/presentation/ui/secreens/my_invest/components/header.dart';
import 'package:ayoub_baali/presentation/ui/secreens/my_invest/components/order_by.dart';
import 'package:ayoub_baali/presentation/ui/secreens/my_invest/components/table.dart';
import 'package:ayoub_baali/presentation/ui/secreens/template/template_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';




class MyInvestSecreen extends StatefulWidget {


  MyInvestSecreen({Key? key}) : super(key: key);

  @override
  State<MyInvestSecreen> createState() => _MyInvestSecreenState();
}

class _MyInvestSecreenState extends State<MyInvestSecreen> {
  int currentIndex=0;
  late SecreenSize size;
  late double width;
  late double height;

  @override
  Widget build(BuildContext context) {
    size=TemplateState.sizeOf(context);
    width=TemplateState.widthOf(context);
    height=TemplateState.heightOf(context);
    return Scaffold(
      appBar: MyHeader(
        name: size==SecreenSize.small?"My Investments":"Investment",
        size: size,
        leadingWidth: size==SecreenSize.medium?80:null,
        leading: Row(
          children: [
            IconButton(onPressed: ()=>TemplateState.scaffoldStateOf(context).currentState!.openDrawer(),
                icon:size==SecreenSize.small? Icon(Icons.arrow_back_ios,color: AppColors.secondaryColor,): Image.asset(AppImages.ic_dashboard_mob),
            ),
            if(size==SecreenSize.medium)
              ImageIcon(AssetImage(AppImages.ic_person),color: AppColors.secondaryColor,)
          ],
        ),
        mobActions: size==SecreenSize.small
            ?const [ImageIcon(AssetImage(AppImages.ic_person),color: AppColors.secondaryColor,),SizedBox(width: 5,)]
            :const [
          ImageIcon(AssetImage(AppImages.ic_notification),color: AppColors.secondaryColor,),
          SizedBox(width: 5,),
          Icon(Icons.arrow_forward_ios_outlined,color: AppColors.secondaryColor,),
          SizedBox(width: 5,)
        ],
      ),
      body: Center(
          child:ListView(
            children: [

              SizedBox(height: 40.h,),
              MyInvestHeader(currentIndex: currentIndex,onClick: onHeaderTap,size: size),
              Filters(size: size),
              orders(),
              SizedBox(height: 25.h,),
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
              SizedBox(height: 20.h,)

            ],
          )
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
        height: height*0.3,
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
                          child: ImageIcon(AssetImage(AppImages.ic_close),color: AppColors.primaryColor,)),
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
