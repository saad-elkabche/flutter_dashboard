import 'package:ayoub_baali/core/constants/app_color.dart';
import 'package:ayoub_baali/core/constants/app_images_icons.dart';
import 'package:ayoub_baali/core/constants/enums.dart';
import 'package:ayoub_baali/presentation/ui/components/app_header.dart';
import 'package:ayoub_baali/presentation/ui/components/components.dart';
import 'package:ayoub_baali/presentation/ui/secreens/achievements/components/tabbed_page.dart';
import 'package:ayoub_baali/presentation/ui/secreens/template/template_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';






class Achievements extends StatefulWidget {

   Achievements() ;

  @override
  State<Achievements> createState() => _AchievementsState();
}

class _AchievementsState extends State<Achievements> {
  late SecreenSize size;
  late double width;
  int currentTab=0;

  @override
  Widget build(BuildContext context) {
    size=TemplateState.sizeOf(context);
    width=TemplateState.widthOf(context);


    return Scaffold(
      appBar:  MyHeader(
          name:'Achievements',
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
           SizedBox(height: 15.h,),
          TabbedWidget(currentTab: currentTab, size: size, onSelect: onSelectTab),
          SizedBox(height:10.h ,),
          currentTab==0?achieved():upComing(),
           SizedBox(height: 15.h,),
        ],
      ),
    );
  }

  void onSelectTab(int index) {
    setState(() {
      currentTab=index;
    });
  }

  Widget achieved() {
    if(size!=SecreenSize.small){
      return Padding(
        padding: const EdgeInsets.all(10.0),
        child: MainContainer(
            child: Wrap(
              alignment: WrapAlignment.center,
              crossAxisAlignment: WrapCrossAlignment.center,
              children: [
                img(AppImages.imgAchievements1),
                img(AppImages.imgAchievements2),
                img(AppImages.imgAchievements3),
                img(AppImages.imgAchievements4),
                img(AppImages.imgAchievements5),
              ],
            )
        ),
      );
    }
    return Wrap(
      alignment: WrapAlignment.center,
      crossAxisAlignment: WrapCrossAlignment.center,
      children: [
        img(AppImages.imgAchievements1),
        img(AppImages.imgAchievements2),
        img(AppImages.imgAchievements3),
        img(AppImages.imgAchievements4),
        img(AppImages.imgAchievements5),
      ],
    );

  }
  Widget img(String img){
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Image.asset(img,fit: BoxFit.cover,width: 160,),
    );
  }

  Widget upComing() {
    if(size!=SecreenSize.small){
      return Padding(
        padding: const EdgeInsets.all(12.0),
        child: MainContainer(
            child:Row(
              children: [
                Expanded(child: Center(child: img(AppImages.imgAchievements2))),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Require ments',style: GoogleFonts.poppins(fontSize:17,color: AppColors.primaryColor, fontWeight:FontWeight.bold, ),),
                      const SizedBox(height: 10,),
                      Text('Network Sales',style: GoogleFonts.poppins(fontSize:17,color: Colors.black, fontWeight:FontWeight.bold, ),),
                      const SizedBox(height: 10,),
                      Text(r'$3,000/3',style: GoogleFonts.poppins(fontSize:17,color: AppColors.primaryColor, fontWeight:FontWeight.bold, ),),
                      const SizedBox(height: 10,),
                      Text('Reward',style: GoogleFonts.poppins(fontSize:17,color: Colors.black, fontWeight:FontWeight.bold, ),),
                      const SizedBox(height: 10,),
                      Text(r'$100',style: GoogleFonts.poppins(fontSize:17,color: AppColors.primaryColor, fontWeight:FontWeight.bold, ),),
                    ],
                  ),
                )
              ],
            )
        ),
      );
    }
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        img(AppImages.imgAchievements2),
        SizedBox(height: 15,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Require ments',style: GoogleFonts.poppins(fontSize:17,color: AppColors.primaryColor, fontWeight:FontWeight.bold, ),),
            const SizedBox(height: 10,),
            Text('Network Sales',style: GoogleFonts.poppins(fontSize:17,color: Colors.black, fontWeight:FontWeight.bold, ),),
            const SizedBox(height: 10,),
            Text(r'$3,000/3',style: GoogleFonts.poppins(fontSize:17,color: AppColors.primaryColor, fontWeight:FontWeight.bold, ),),
            const SizedBox(height: 10,),
            Text('Reward',style: GoogleFonts.poppins(fontSize:17,color: Colors.black, fontWeight:FontWeight.bold, ),),
            const SizedBox(height: 10,),
            Text(r'$100',style: GoogleFonts.poppins(fontSize:17,color: AppColors.primaryColor, fontWeight:FontWeight.bold, ),),
          ],
        ),
      ],
    );
  }
}
