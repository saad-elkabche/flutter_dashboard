import 'package:ayoub_baali/core/constants/app_color.dart';
import 'package:ayoub_baali/core/constants/enums.dart';
import 'package:ayoub_baali/presentation/ui/components/components.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';




class WithdrawTable extends StatelessWidget {
    SecreenSize size;
   WithdrawTable({required this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      margin: EdgeInsets.symmetric(horizontal: 18),
      decoration: BoxDecoration(
        color: AppColors.scaffoldColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: [
          TableHeader(
              items:items()
          ),
          ...rows()


        ],
      ),
    );
  }

  List<String> items() {
    List<String> items;
    if(size==SecreenSize.small){
      items=[
        'Plan',
        'Amount',
        'Fees',
        'Details'
      ];
    }else if(size== SecreenSize.medium){
      items=[
        'Id',
        'Amount',
        'Fees',
        'Status',
        'Details'
      ];
    }else{
      items=[
        'Id',
        'Coin',
        'Amount',
        'Fees',
        'Address',
        'Status',
        'Requested at',
        'Proceed at',
      ];
    }
    return items;
  }

  List<Widget> rows() {
    List<Widget> items;

    if(size==SecreenSize.small){
      items=[
        tableRow(['4564132','0.0002','0.003',detailsCell()])
      ];
    }else if(size== SecreenSize.medium){
      items=[
        tableRow(['4564132','0.0002','0.003',Text('rejected',style: GoogleFonts.poppins(color: Colors.redAccent),),detailsCell()])
      ];
    }else{
      items=[
        tableRow(['4564132','Litecoin','0.003','0.003','QYhsnsuhjbsuUJSsuSbjsu',textCell('rejected', Colors.redAccent),'2023-11-01 07:24:09','2023-11-01 07:24:09']),
        tableRow(['4564132','Litecoin','0.003','0.003','QYhsnsuhjbsuUJSsuSbjsu',textCell('Pending', Colors.blue),'2023-11-01 07:24:09','2023-11-01 07:24:09']),
        tableRow(['4564132','Litecoin','0.003','0.003','QYhsnsuhjbsuUJSsuSbjsu',textCell('approved', Colors.green),'2023-11-01 07:24:09','2023-11-01 07:24:09']),

      ];
    }


    return items;
  }
  Widget textCell(String text,Color color){
    return Text('$text',style: GoogleFonts.poppins(color: color,fontWeight: FontWeight.bold),);
  }

  Widget detailsCell(){
    return Container(
      padding: EdgeInsets.all(2),
      constraints: BoxConstraints(
        maxWidth: 60
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(3),
        color: AppColors.secondaryColor
      ),
      child: Text("more",style: GoogleFonts.poppins(fontWeight: FontWeight.bold,color: Colors.white),),
    );
  }

  Widget tableRow(List<dynamic> items){
    return SizedBox(
      height: 40,
      child: Row(
        children: List.generate(items.length, (index) =>
            Expanded(
                child: Center(
                  child:
                  items.elementAt(index) is String
                      ?
                  Text( items.elementAt(index),overflow: TextOverflow.ellipsis,style: GoogleFonts.poppins(fontWeight: FontWeight.bold),)
                      :
                  items.elementAt(index),
                )
            )
        )
      ),
    );
  }
}
