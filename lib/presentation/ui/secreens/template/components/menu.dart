import 'package:ayoub_baali/core/constants/app_color.dart';
import 'package:ayoub_baali/core/constants/app_images_icons.dart';
import 'package:ayoub_baali/core/constants/enums.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class Menu extends StatelessWidget {
  List<MenuItem> items;
  SecreenSize size;
  String currentLocation;
  void Function(MenuItem)? onItemClick;

  Menu({required this.items,required this.currentLocation,required this.size,required this.onItemClick});

  @override
  Widget build(BuildContext context) {

    return size==SecreenSize.large
        ?Container(
      width: 250,
      height: double.infinity,
      color: AppColors.primaryColor,
      child: Center(child: menuContent())
    )
        :Drawer(
              backgroundColor: AppColors.primaryColor,
              child: menuContent(),);
  }

  Widget menuContent(){
    return Column(
      children: [
        menuHeader(),
        Expanded(
            child:Center(
              child: SingleChildScrollView(
                child: Column(
                  children:List.generate(items.length, (index) => menuItemWidget(items.elementAt(index))),
                ),
              ),
            )
        ),
        footer()
      ],
    );
  }
  
  Widget menuItemWidget(MenuItem menuItem){
    return ListTile(
      onTap:()=> onItemClick?.call(menuItem),
      leading: ImageIcon(
          AssetImage(menuItem.icon),
        color: currentLocation==menuItem.location?Colors.white:AppColors.secondaryColor,
        size: 17,
      ),
      title: Text(menuItem.name,style: GoogleFonts.poppins(fontSize: 13,color: Colors.white),),
    );
  }

  Widget menuHeader(){
    return Container(
      height: 70,
      color:Colors.white,
      child:  Center(
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Image.asset(AppImages.img_logo,fit: BoxFit.cover,),
        ),
      ),
    );
  }
  Widget footer(){
    return  Container(
      height: 45,
      decoration: BoxDecoration(
        border: Border(top: BorderSide(color: Colors.white))
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Copyright ',style: GoogleFonts.poppins(color: Colors.white),),
            const Icon(Icons.copyright_rounded,color: Colors.white,size: 12,),
             Text.rich(
               TextSpan(
                 children: [
                   TextSpan(text: '2023 ',style:GoogleFonts.poppins(color: Colors.white) ),
                   TextSpan(text: 'EBP',style:GoogleFonts.poppins(color: AppColors.secondaryColor) ),
                 ]
               )
             )
          ],
        ),
      ),
    );
  }

}

class MenuItem{
  String name;
  String location;
  String icon;
  MenuItem(this.name,this.location,this.icon);
}

