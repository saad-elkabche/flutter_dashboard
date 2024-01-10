import 'package:ayoub_baali/core/constants/app_color.dart';
import 'package:ayoub_baali/core/constants/enums.dart';
import 'package:ayoub_baali/presentation/ui/components/components.dart';
import 'package:ayoub_baali/presentation/ui/components/drop_down_list.dart';
import 'package:ayoub_baali/presentation/ui/components/text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';





class KYCForm extends StatelessWidget {

  SecreenSize size;

   KYCForm({required this.size});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:const EdgeInsets.symmetric(vertical: 18,horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Fill up information and verify your KYC',
            style: GoogleFonts.poppins(
                color: size==SecreenSize.small?AppColors.primaryColor:Colors.black,
                fontWeight: FontWeight.bold),),
          const  SizedBox(height: 18,),
          idType(),
          const SizedBox(height: 10,),
          input('Front:'),
          const SizedBox(height: 10,),
          input('Back:'),
          const SizedBox(height: 50,),
          MyCustomButton(name: 'Submit',color: size!=SecreenSize.small?AppColors.secondaryColor:AppColors.primaryColor,)


        ],
      ),
    );
  }
  Widget idType(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('ID Type:',style: GoogleFonts.poppins(color:size==SecreenSize.small?AppColors.primaryColor: Colors.black,fontWeight: FontWeight.bold),),

        const SizedBox(height: 10,),
        DropDownList(items: ['item 1','item 2'], hint: 'Choose one'),
      ],
    );
  }


  Widget input(String name){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('$name',style: GoogleFonts.poppins(color:size==SecreenSize.small?AppColors.primaryColor: Colors.black,fontWeight: FontWeight.bold),),
       const SizedBox(height: 10,),
        Container(
          clipBehavior: Clip.hardEdge,
          width: double.infinity,
          height: 40,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            //border: Border.all(color: AppColors.secondaryColor,width: 1,)
          ),
          child: Row(
            children: [
              Container(
                color: size==SecreenSize.small?AppColors.secondaryColor:Colors.black,
                width: 100,
                height: 40,
                child: Center(child: Text('Choose File',style: GoogleFonts.poppins(color: Colors.white,fontWeight: FontWeight.w300),)),
              ),
              Expanded(
                  child: Container(
                  height: 40,
                  alignment: Alignment.centerLeft,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(topRight: Radius.circular(10),bottomRight: Radius.circular(10)),
                    color: Colors.white,
                    border:  Border(bottom: BorderSide(color: AppColors.secondaryColor,width: 1),
                    right: BorderSide(color: AppColors.secondaryColor,width: 1),
                      top: BorderSide(color: AppColors.secondaryColor,width: 1)
                    )
                  ),
                  child: Text('  No file choosen',style: GoogleFonts.poppins(),)))
            ],
          ),
        )
      ],
    );
  }

}
