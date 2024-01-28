import 'dart:html';

import 'package:ayoub_baali/core/constants/app_color.dart';
import 'package:ayoub_baali/core/constants/app_images_icons.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class NetworkPagination extends StatefulWidget {

  int nbPages;

  void Function(int)? onSelectPage;


  NetworkPagination({required this.nbPages, this.onSelectPage});

  @override
  State<NetworkPagination> createState() => _NetworkPaginationState();
}

class _NetworkPaginationState extends State<NetworkPagination> {

  late ScrollController controller;
  int currentPage=1;


  @override
  void initState() {
    super.initState();
    controller=ScrollController();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          children: [
            IconButton(onPressed: scrollLeft,icon: ImageIcon(AssetImage(AppImages.ic_arrow_left),color: AppColors.secondaryColor,)),
            const SizedBox(width: 5,),
            Text('Previous',style: GoogleFonts.poppins(color: Colors.black,fontWeight: FontWeight.bold),)
          ],
        ),
        const SizedBox(width: 10,),
        Expanded(
            child: SizedBox(
              height: 40,
              child: ListView(
                scrollDirection:Axis.horizontal,
                controller: controller,
                children:List.generate(widget.nbPages, (index) => item(index+1, (index+1)==currentPage))
              ),
            ),
        ),
        const SizedBox(width: 10,),
        Row(
          children: [
            Text('Next',style: GoogleFonts.poppins(color: Colors.black,fontWeight: FontWeight.bold),),
            const SizedBox(width: 5,),
            IconButton(
                onPressed: scrollRight,
                icon: const ImageIcon(AssetImage(AppImages.ic_arrow_right),color: AppColors.secondaryColor,)),
          ],
        )
      ],
    );
  }

  Widget item(int nb,bool isSelected){
    return GestureDetector(
      onTap: ()=>_selectItem(nb),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Text(nb.toString(),style: GoogleFonts.poppins(color: Colors.black),),
            if(isSelected)
              Container(
                width: 20,
                height: 2,
                color: AppColors.secondaryColor,
              )
          ],
        ),
      ),
    );
  }

  void scrollLeft() {
    controller.animateTo((controller.offset-40), duration: const Duration(milliseconds:700 ), curve: Curves.linearToEaseOut);
  }

  void scrollRight() {
    controller.animateTo((controller.offset+40), duration: const Duration(milliseconds:700 ), curve: Curves.linearToEaseOut);
  }

  void _selectItem(int nb) {
    setState(() {
      currentPage=nb;
    });
    widget.onSelectPage?.call(nb);
  }
}
