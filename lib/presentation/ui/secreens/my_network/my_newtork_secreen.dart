import 'package:ayoub_baali/core/constants/app_color.dart';
import 'package:ayoub_baali/core/constants/app_images_icons.dart';
import 'package:ayoub_baali/core/constants/enums.dart';
import 'package:ayoub_baali/presentation/ui/components/app_header.dart';
import 'package:ayoub_baali/presentation/ui/components/web_form_field.dart';
import 'package:ayoub_baali/presentation/ui/secreens/my_network/components/my_graph.dart';
import 'package:ayoub_baali/presentation/ui/secreens/my_network/components/network_header.dart';
import 'package:ayoub_baali/presentation/ui/secreens/my_network/components/pagination.dart';
import 'package:ayoub_baali/presentation/ui/secreens/template/template_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graphview/GraphView.dart';




class MyNetwork extends StatefulWidget {

  MyNetwork({Key? key}) : super(key: key);

  @override
  State<MyNetwork> createState() => _MyNetworkState();
}

class _MyNetworkState extends State<MyNetwork> {
  late SecreenSize size;
  late double width;
  int currentTab=0;


  @override
  Widget build(BuildContext context) {

    size=TemplateState.sizeOf(context);
    width=TemplateState.widthOf(context);


    return  Scaffold(
      appBar:  MyHeader(
          name:'My Network',
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

          mobActions: [
            if(size==SecreenSize.medium)
              SizedBox(width: 170,height: 35,child: WebFormField(hint: 'Search Here',borderColor: Colors.white,activeBorderColor: Colors.white, label: '',suffix: Icon(Icons.search,color: AppColors.secondaryColor,),fillColor: Colors.white,)),
            const SizedBox(width: 5,),
            ImageIcon(AssetImage(AppImages.ic_notification),color: AppColors.secondaryColor,),
            Icon(Icons.arrow_forward_ios,color: AppColors.secondaryColor,),
            SizedBox(width: 5,)
          ]
      ),
      body:Column(
        children: [
          SizedBox(height: 40.h,),
          if(size!=SecreenSize.medium)
          NetworkHeader(currentTab: currentTab,width: width, size: size, onSelect: (index)=>setState(() {
            currentTab=index;
          })),

          //SizedBox(height: 40.h,),
          
          Expanded(child: InteractiveViewer(
              constrained: false,
              boundaryMargin: EdgeInsets.all(100),
              minScale: 0.01,
              maxScale: 5.6,

              child: MyGraph(size: size))),


          SizedBox(
              width: 350,
              child: NetworkPagination(nbPages: 20,))





        ],
      )
    );
  }
}
