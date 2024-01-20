import 'package:ayoub_baali/core/constants/app_color.dart';
import 'package:ayoub_baali/core/constants/enums.dart';
import 'package:ayoub_baali/presentation/ui/components/components.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';




class MemberShipTable extends StatelessWidget {
    SecreenSize size;
   MemberShipTable({required this.size});

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
        'Name',
        'Amount',
        'Date/Time',
        'Status'
      ];
    }else if(size== SecreenSize.medium){
      items=[
        'Name',
        'Amount',
        'Expire at',
        'Date/Time',
        'Status',
      ];
    }else{
      items=[
        'Name',
        'Amount',
        'Expire at',
        'Date/Time',
        'Status',
      ];
    }
    return items;
  }

  List<Widget> rows() {
    List<Widget> items;

    if(size==SecreenSize.small){
      items=[
        tableRow(['Basic',r'$5','2023-10-23',status('Purchased',AppColors.secondaryColor,Colors.white)]),
        tableRow(['Silver',r'$12.5000','2023-10-23',status('Pending',Colors.green,Colors.white)]),
        tableRow(['Gold',r'$37.5000','12023-10-23',status('Pending',Colors.green,Colors.white)]),
        tableRow(['Diamond',r'$93.7500','2023-10-23',status('Pending',Colors.green,Colors.white)]),
        tableRow(['Platinum',r'$281.2500','2023-10-23',status('Pending',Colors.green,Colors.white)]),
      ];
    }else if(size== SecreenSize.medium){
      items=[
        tableRow(['Basic',r'$5','2023-10-23','2023-10-23 11.30 AM',status('Purchased',Colors.white,Colors.black)]),
        tableRow(['Silver',r'$12.5000','2023-10-23','2023-10-23 11.30 AM',status('Pending',Colors.green,Colors.white)]),
        tableRow(['Gold',r'$37.5000','12023-10-23','2023-10-23 11.30 AM',status('Pending',Colors.green,Colors.white)]),
        tableRow(['Diamond',r'$93.7500','2023-10-23','2023-10-23 11.30 AM',status('Pending',Colors.green,Colors.white)]),
        tableRow(['Platinum',r'$281.2500','2023-10-23','2023-10-23 11.30 AM',status('Pending',Colors.green,Colors.white)]),
      ];
    }else{
      items=[
        tableRow(['Basic',r'$5','2023-10-23','2023-10-23 11.30 AM',status('Purchased',Colors.white,Colors.black)]),
        tableRow(['Silver',r'$12.5000','2023-10-23','2023-10-23 11.30 AM',status('upcoming',Colors.green,Colors.white)]),
        tableRow(['Gold',r'$37.5000','12023-10-23','2023-10-23 11.30 AM',status('upcoming',Colors.green,Colors.white)]),
        tableRow(['Diamond',r'$93.7500','2023-10-23','2023-10-23 11.30 AM',status('upcoming',Colors.green,Colors.white)]),
        tableRow(['Platinum',r'$281.2500','2023-10-23','2023-10-23 11.30 AM',status('upcoming',Colors.green,Colors.white)]),
      ];
    }


    return items;
  }
  Widget textCell(String text,Color color){
    return Text('$text',style: GoogleFonts.poppins(color: color,fontWeight: FontWeight.bold),);
  }

  Widget status(String text,Color bgColor,Color textColor){
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 4,vertical: 2),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(3),
        color: bgColor,
        boxShadow: const [BoxShadow(color: Colors.grey,offset: Offset(3,3),blurRadius: 14)]
      ),
      child: Text("$text",style: GoogleFonts.poppins(fontWeight: FontWeight.bold,color: textColor),),
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
