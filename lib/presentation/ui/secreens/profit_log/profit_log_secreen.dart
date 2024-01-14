import 'package:ayoub_baali/core/constants/app_color.dart';
import 'package:ayoub_baali/core/constants/app_images_icons.dart';
import 'package:ayoub_baali/core/constants/enums.dart';
import 'package:ayoub_baali/presentation/ui/components/app_header.dart';
import 'package:ayoub_baali/presentation/ui/components/components.dart';
import 'package:ayoub_baali/presentation/ui/secreens/template/template_state.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';




class ProfitLogSecreen extends StatelessWidget {

  late SecreenSize size;
  late double width;
  ProfitLogSecreen();

  @override
  Widget build(BuildContext context) {
    size=TemplateState.sizeOf(context);
    width=TemplateState.widthOf(context);
    return Scaffold(
      appBar: MyHeader(
          name:'Profit Log',
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
      ),
      body: ListView(
        children: [
          const SizedBox(height: 40,),
          Center(
            child: Align(
              alignment: size==SecreenSize.large?Alignment.centerLeft:Alignment.center,
              child: Padding(
                padding: const EdgeInsets.only(left: 18.0),
                child: Text('Profit Investment',style: GoogleFonts.poppins(
                    color: size==SecreenSize.large?Colors.black:AppColors.primaryColor,
                  fontSize: size==SecreenSize.large?15:20,
                  fontWeight: FontWeight.bold
                ),
                ),
              ),
            ),
          ),

           SizedBox(height: size==SecreenSize.large?20:40,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: TableHeader(items: ['Plan','Duration','investment','Profit']),
          ),
          const SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: MainContainer(
                child: Container(
                  height: 30,
                  margin: const EdgeInsets.symmetric(horizontal: 15,vertical: 30),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: AppColors.primaryColor,
                      borderRadius: BorderRadius.circular(8)
                  ),
                  child: Center(child: Text("No Data found!",style: GoogleFonts.poppins(color: Colors.white),)),
                )
            ),
          )
        ],
      ),
    );
  }
}
