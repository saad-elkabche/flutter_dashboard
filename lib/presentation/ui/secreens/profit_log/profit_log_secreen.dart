import 'package:ayoub_baali/core/constants/app_color.dart';
import 'package:ayoub_baali/core/constants/enums.dart';
import 'package:ayoub_baali/presentation/ui/components/components.dart';
import 'package:ayoub_baali/presentation/ui/secreens/template/template_state.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';




class ProfitLogSecreen extends StatelessWidget {

  late SecreenSize size;
  late double width;
  ProfitLogSecreen();

  @override
  Widget build(BuildContext context) {
    size=TemplateState.sizeOf(context);
    width=TemplateState.widthOf(context);
    return ListView(
      children: [
        const SizedBox(height: 40,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: TableHeader(items: ['Plan','Duration','investment','Profit']),
        ),
        SizedBox(height: 20,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: MainContainer(
              child: Container(
                height: 30,
                margin: const EdgeInsets.symmetric(horizontal: 15,vertical: 30),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppColors.primaryColor,
                  borderRadius: BorderRadius.circular(8)
                ),
                child: Center(child: Text("No Data found!",style: GoogleFonts.poppins(color: Colors.white),)),
              )
          ),
        )
      ],
    );
  }
}
