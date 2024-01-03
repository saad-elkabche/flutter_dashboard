import 'package:ayoub_baali/core/constants/app_color.dart';
import 'package:ayoub_baali/core/constants/enums.dart';
import 'package:ayoub_baali/presentation/ui/components/components.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';



class MyInvestTable extends StatelessWidget {
  SecreenSize size;
  List<Invest> items;

   MyInvestTable({required this.size,required this.items}) ;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0),
      child: Column(
        children: [
         TableHeader(items: const ['Inv.Amount','Date/time','Expire at','Action']),
         const SizedBox(height: 15,),
         Container(
           width: double.infinity,
           clipBehavior: Clip.hardEdge,
           decoration: BoxDecoration(
             color: AppColors.scaffoldColor,
             borderRadius: BorderRadius.circular(10),
             border: Border.all(color: Colors.black45,width: 1)
           ),
           child: Column(
             children: List.generate(items.length, (index) => tableRow(items.elementAt(index))),
           ),
         )
        ],
      ),
    );
  }

  Widget tableRow(Invest item){
    return Container(
      height: 60,
      width: double.infinity,
      decoration: const BoxDecoration(
        border: Border(bottom: BorderSide(color: Colors.black45,width: 1))
      ),
      child: Row(
        children: [
          tableCell(tableText(item.amount?? 'None', Colors.black)),
          tableCell(tableText(item.dateTime?? 'None', Colors.black)),
          tableCell(tableText(item.expireAt?? 'None', AppColors.primaryColor)),
          tableCell(Container(
            width: 80,
            height: 30,
            alignment: Alignment.center,
            padding:const EdgeInsets.symmetric(vertical: 3,horizontal: 3),
            decoration: BoxDecoration(
              color: AppColors.primaryColor,
              borderRadius: BorderRadius.circular(6),
            ),
            child: tableText('Release', Colors.white),
          )),

        ],
      ),
    );
  }

  Widget tableText(String name,Color textColor){
    return Padding(padding: const EdgeInsets.symmetric(horizontal: 8),child: FittedBox(child: Text('$name',overflow: TextOverflow.ellipsis,style: GoogleFonts.poppins(color: textColor,fontWeight: FontWeight.bold),)));
  }
  Widget tableCell(Widget child){
    return Expanded(child:
        Center(child: child,)
    );
  }
}

class Invest{
  String? amount;
  String? dateTime;
  String? expireAt;

  Invest({this.amount, this.dateTime, this.expireAt});
}



