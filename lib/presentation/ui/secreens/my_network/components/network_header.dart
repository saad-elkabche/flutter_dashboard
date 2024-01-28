import 'package:ayoub_baali/core/constants/app_color.dart';
import 'package:ayoub_baali/core/constants/enums.dart';
import 'package:ayoub_baali/presentation/ui/components/web_form_field.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';





class NetworkHeader extends StatelessWidget {

  void Function(int) onSelect;
  int currentTab;
  SecreenSize size;
  double width;

  NetworkHeader({required this.currentTab,required this.width,required this.size,required this.onSelect}) ;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      margin: const EdgeInsets.symmetric(horizontal: 15),
      padding: const EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColors.primaryColor
      ),
      child: Row(
        mainAxisAlignment:size==SecreenSize.large?MainAxisAlignment.spaceBetween:MainAxisAlignment.center,
        children: [
          if(size==SecreenSize.large)
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              item('Referrals', 0),
              item('Link', 1),
            ],
          ),
          SizedBox(width: size==SecreenSize.large?270:width*0.8,height: 35,child: WebFormField(hint: 'Search Here',
            label: '',
            suffix: Icon(Icons.search,color: AppColors.secondaryColor,),
             borderColor: Colors.white,
            activeBorderColor: Colors.white,
            fillColor: Colors.white,))
        ],
      ),
    );
  }
  Widget item(String name,index){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap:()=> onSelect.call(index),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Text(name,style: GoogleFonts.poppins(color: Colors.white),),

            if(index==currentTab)
              Container(
                width: 70,
                height: 2,
                margin: const EdgeInsets.only(top: 3),
                color: AppColors.secondaryColor,
              )
          ],
        ),
      ),
    );
  }

}
