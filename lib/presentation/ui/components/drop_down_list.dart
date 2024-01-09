import 'package:ayoub_baali/core/constants/app_color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';





class DropDownList extends StatefulWidget {

  List<String> items;
  String hint;
  Color color,dividerColor;

  DropDownList({required this.items,this.color=AppColors.secondaryColor,this.dividerColor=Colors.white,required this.hint}) ;


  @override
  State<DropDownList> createState() => _DropDownListState();
}

class _DropDownListState extends State<DropDownList> {

  int? currentIndex;


  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        //margin: EdgeInsets.symmetric(horizontal: 20),
        height: 38,
        padding: const EdgeInsets.symmetric(horizontal: 7),
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: AppColors.secondaryColor,width: 1),
            borderRadius: BorderRadius.circular(3.5)
        ),
        child:DropdownButton(
          onChanged: (val){
            setState(() {
              currentIndex=val;
            });
          },
          iconEnabledColor: widget.color,
          isExpanded: true,
          hint: Text(widget.hint,style: GoogleFonts.poppins(color: Colors.black),),
          dropdownColor:widget.color,
          underline: Container(),
          value:currentIndex ,

          items: List.generate(widget.items.length, (index) =>
              chooseItem(widget.items.elementAt(index), index==currentIndex,index,index!=widget.items.length-1)),
        )
    );
  }

  DropdownMenuItem chooseItem(String name,bool isSelected,int index,[bool withDivider=true]){
    return DropdownMenuItem(
      value: index,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment:CrossAxisAlignment.start ,
        children: [
          Text('$name',style: GoogleFonts.poppins(color: isSelected?Colors.black:Colors.white,fontWeight: FontWeight.normal),),
          const SizedBox(height: 5,),
          if(withDivider && !isSelected)
            Container(
              color: widget.dividerColor,
              height: 1.5,
              width: double.infinity,
            ),
        ],
      ),
    );
  }
}
