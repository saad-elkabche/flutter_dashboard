import 'package:ayoub_baali/core/constants/app_color.dart';
import 'package:ayoub_baali/core/constants/enums.dart';
import 'package:ayoub_baali/presentation/ui/components/components.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';




class TransactionTable extends StatelessWidget {
    SecreenSize size;
   TransactionTable({required this.size});

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
        'Trx',
        'Amount',
        'Fees',
        'Details'
      ];
    }else if(size== SecreenSize.medium){
      items=[
        'System Trx',
        'Amount',
        'old\nBalance',
        'New\nBalance',
        'Date/Time',
        'Fees',
        'Status',
      ];
    }else{
      items=[
        'System Trx',
        'Amount',
        'old Balance',
        'New Balance',
        'Date/Time',
        'Fees',
        'Status',
      ];
    }
    return items;
  }

  List<Widget> rows() {
    List<Widget> items;

    if(size==SecreenSize.small){
      items=[
        tableRow(['4564132',r'500.00$','10%',detailsCell()]),
        tableRow(['4564132',r'500.00$','10%',detailsCell()]),
        tableRow(['4564132',r'500.00$','10%',detailsCell()]),
        tableRow(['4564132',r'500.00$','10%',detailsCell()]),
        tableRow(['4564132',r'500.00$','10%',detailsCell()]),
      ];
    }else if(size== SecreenSize.medium){
      items=[
        tableRow(['Sk61DAS',r'500.00$',r'400.00$',r'900.00$','2023-10-22 11.30 AM','15%',textCell('Pending' ,Colors.blue),]),
        tableRow(['Sk61DAS',r'500.00$',r'400.00$',r'900.00$','2023-10-22 11.30 AM','15%',textCell('Approved',Colors.green),]),
        tableRow(['Sk61DAS',r'500.00$',r'400.00$',r'900.00$','2023-10-22 11.30 AM','15%',textCell('rejected',Colors.redAccent),]),
        tableRow(['Sk61DAS',r'500.00$',r'400.00$',r'900.00$','2023-10-22 11.30 AM','15%',textCell('rejected',Colors.green),]),
        tableRow(['Sk61DAS',r'500.00$',r'400.00$',r'900.00$','2023-10-22 11.30 AM','15%',textCell('rejected',Colors.redAccent),]),
      ];
    }else{
      items=[
        tableRow(['Sk61DAS',r'500.00$',r'400.00$',r'900.00$','2023-10-22 11.30 AM','15%',textCell('Pending',Colors.blue),]),
        tableRow(['Sk61DAS',r'500.00$',r'400.00$',r'900.00$','2023-10-22 11.30 AM','15%',textCell('Approved', Colors.green),]),
        tableRow(['Sk61DAS',r'500.00$',r'400.00$',r'900.00$','2023-10-22 11.30 AM','15%',textCell('Rejected', Colors.red),]),
        tableRow(['Sk61DAS',r'500.00$',r'400.00$',r'900.00$','2023-10-22 11.30 AM','15%',textCell('Approved', Colors.green),]),
        tableRow(['Sk61DAS',r'500.00$',r'400.00$',r'900.00$','2023-10-22 11.30 AM','15%',textCell('Rejected', Colors.redAccent),]),
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
