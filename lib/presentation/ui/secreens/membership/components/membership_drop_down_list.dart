import 'package:ayoub_baali/core/constants/app_color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';





class MemberShipDropDownList extends StatefulWidget {

  Map<String,String> items;
  String hint;
  Color color,dividerColor;
  Color? borderColor;

  MemberShipDropDownList({required this.items,this.borderColor,this.color=AppColors.secondaryColor,this.dividerColor=Colors.white,required this.hint}) ;


  @override
  State<MemberShipDropDownList> createState() => _MemberShipDropDownListState();
}

class _MemberShipDropDownListState extends State<MemberShipDropDownList> {

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
            border: Border.all(color: widget.borderColor ?? Colors.black,width: 1),
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
          items: List.generate(widget.items.length,(index){
            String key=widget.items.keys.elementAt(index);
            return chooseItem(key,widget.items[key]!, index==currentIndex,index,index!=widget.items.length-1);
          })
        )
    );
  }

  DropdownMenuItem chooseItem(String name,String value,bool isSelected,int index,[bool withDivider=true]){
    return DropdownMenuItem(
      value: index,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment:CrossAxisAlignment.start ,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('$name',style: GoogleFonts.poppins(color: isSelected?Colors.black:Colors.white,fontSize: 10,fontWeight: FontWeight.normal),),
              Text('$value',style: GoogleFonts.poppins(color: isSelected?Colors.black:Colors.white,fontSize: 10,fontWeight: FontWeight.normal),),

            ],
          ),
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
