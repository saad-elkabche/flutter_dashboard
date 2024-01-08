import 'package:ayoub_baali/core/constants/app_color.dart';
import 'package:ayoub_baali/presentation/ui/components/components.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class Preview extends StatelessWidget {
  const Preview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainContainer(
        child:Column(
          children: [
            Text('Preview',style: GoogleFonts.poppins(color: AppColors.primaryColor,fontSize: 18,fontWeight: FontWeight.bold),),
            SizedBox(height: 20,),
            item('Request Amount'),
            item('Exchange Rate'),
            item('Fees'),
            item('Total Payable'),
            item('You Will Get',false),
          ],
        )
    );
  }

  Widget item(String name,[bool withDvider=true]){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(name,style: GoogleFonts.poppins(color: Colors.black,fontWeight: FontWeight.normal),),
            Text('---',style: GoogleFonts.poppins(),)
          ],
        ),
        SizedBox(height: 12),
        if(withDvider)
        Container(
          width: double.infinity,
          height: 1.5,
          color: AppColors.secondaryColor,
        ),
        SizedBox(height: 8),
      ],
    );
  }
}
