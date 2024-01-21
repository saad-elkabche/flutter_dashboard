import 'package:ayoub_baali/core/constants/app_color.dart';
import 'package:ayoub_baali/core/constants/app_images_icons.dart';
import 'package:ayoub_baali/core/constants/enums.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class Menu extends StatefulWidget {
  List<MenuItem> items;
  SecreenSize size;
  String currentLocation;
  void Function(MenuItem)? onItemClick;

  Menu({required this.items,required this.currentLocation,required this.size,required this.onItemClick});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  bool isExpanded=true;

  @override
  Widget build(BuildContext context) {

    return widget.size==SecreenSize.large
        ?largeMenu()
        :Drawer(
              backgroundColor: AppColors.primaryColor,
              child: menuContent(),);
  }

  Widget menuContent(){
    return Column(
      children: [
        menuHeader(),
        Expanded(
            child:SingleChildScrollView(
              child: Column(
                children:List.generate(widget.items.length, (index) => menuItemWidget(widget.items.elementAt(index))),
              ),
            )
        ),
        if(isExpanded)
        footer()
      ],
    );
  }

  Widget menuItemWidget(MenuItem menuItem){
    return ListTile(
      onTap:()=> widget.onItemClick?.call(menuItem),
      leading: ImageIcon(
          AssetImage(menuItem.icon),
        color: widget.currentLocation==menuItem.location?Colors.white:AppColors.secondaryColor,
        size: 17,
      ),
      title:isExpanded? Text(menuItem.name,style: GoogleFonts.poppins(fontSize: 13,color: Colors.white),):null,
    );
  }

  Widget menuHeader(){
    return isExpanded
        ?Container(
      height: 70,
      color:Colors.white,
      child:  Center(
        child: Stack(
          alignment: Alignment.center,
          children:[
            SizedBox(height: double.infinity,width: double.infinity,),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Image.asset(AppImages.img_logo,fit: BoxFit.cover,),
            ),
            if(widget.size==SecreenSize.large)
            Positioned(
                right: 0,
                top: 0,
                child: IconButton(onPressed: ()=>onIconMenuTapped(), icon: const Icon(Icons.menu,color: AppColors.secondaryColor,)))
          ]
        ),
      ),
    )
        :IconButton(onPressed: ()=>onIconMenuTapped(), icon: const Icon(Icons.arrow_forward_rounded,size: 40,color: AppColors.secondaryColor,));
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

  void onIconMenuTapped() {
    setState(() {
      isExpanded=!isExpanded;
    });
  }

  Widget largeMenu() {
    return AnimatedContainer(
      duration: const Duration(milliseconds:350),
        width:isExpanded?250:70,
        height: double.infinity,
        color: AppColors.primaryColor,
        child: Center(child: menuContent())
    );
  }
}

class MenuItem{
  String name;
  String location;
  String icon;
  MenuItem(this.name,this.location,this.icon);
}

