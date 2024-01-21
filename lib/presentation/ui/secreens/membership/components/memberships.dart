import 'package:ayoub_baali/core/constants/app_color.dart';
import 'package:ayoub_baali/core/constants/app_images_icons.dart';
import 'package:ayoub_baali/core/constants/enums.dart';
import 'package:ayoub_baali/presentation/ui/components/components.dart';
import 'package:ayoub_baali/presentation/ui/secreens/membership/components/membership_drop_down_list.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';




class MemberShipsDetails extends StatelessWidget {
  SecreenSize size;

  MemberShipsDetails({required this.size}) ;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal:size==SecreenSize.small?8: 28),
      padding: EdgeInsets.symmetric(horizontal:size==SecreenSize.small?8: 18,vertical: 30),
      decoration:  BoxDecoration(
        color: AppColors.scaffoldColor,
        boxShadow: [BoxShadow(color: Colors.grey,offset: Offset(4,4),blurRadius: 10)],
        borderRadius: BorderRadius.circular(10)
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(child: column1()),
          Expanded(child: column2())
        ],
      )
    );
  }


  Widget column1() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment:size==SecreenSize.large?MainAxisAlignment.start:MainAxisAlignment.spaceBetween ,
        children: [
          if(size==SecreenSize.large)
            Padding(
              padding: EdgeInsets.only(bottom: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(r'Memberships',style: GoogleFonts.poppins(color: AppColors.primaryColor,fontSize: 18,fontWeight: FontWeight.bold),),
                  Text('Current Membership: Basic',style: GoogleFonts.poppins(color: Colors.black,fontSize: 11,fontWeight: FontWeight.normal),)
                ],
              ),
            ),



          MemberShipDropDownList(
            hint: '',
            fontSize: size==SecreenSize.large?17:size==SecreenSize.medium?13:10,
            borderColor: Colors.white,
            dividerColor: AppColors.secondaryColor,
            color: AppColors.primaryColor,
            items: const {
              'Basic':r'$5',
              'Silver':r'$12.5000',
              'Gold':r'$37.5000',
              'Daimond':r'$93.7500',
              'Platinum':r'$281.2500',
            },
          ),
          SizedBox(height: 200,),

          /*MyCustomButton(name: 'Purchase Membership',
            alignment: Alignment.centerLeft,
            width: 220,

            fontSize: size==SecreenSize.small?10:17,
            color: AppColors.secondaryColor,)*/
          MySimpleBotton(name: 'Purchase Membership', width: 220, height: 30,fontSize:size==SecreenSize.small?10:15,onclick: (){},)

        ],
      ),
    );
  }

  Widget column2() {
    return Column(
      mainAxisSize:MainAxisSize.min ,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: size!=SecreenSize.large?MainAxisAlignment.spaceBetween:MainAxisAlignment.start,
      children: [
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment:  MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisSize:MainAxisSize.min ,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(r'Silver Membership',style: GoogleFonts.poppins(fontSize: size!=SecreenSize.small?20:14,color: AppColors.primaryColor,fontWeight: FontWeight.bold),),
                    const SizedBox(height: 5,),
                    Container(
                      width: 130,
                      height: 1.5,
                      color: AppColors.secondaryColor,
                    )
                  ],
                ),
                if(size==SecreenSize.large)
                  Text('Price:12.5000',style: GoogleFonts.poppins(color: AppColors.primaryColor,fontWeight: FontWeight.bold),)
              ],
            ),
            SizedBox(height: 20,),

            responsiverWidgets(),
          ],
        ),
        if(size!=SecreenSize.large)
          MySimpleBotton(name: 'view details', width: 120, color: AppColors.primaryColor,height: 30,fontSize:12,onclick: (){},)



      ],
    );
  }

  Widget responsiverWidgets() {
    if(size==SecreenSize.large){
      return Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              children: [

                item(' Membership Levels: 10'),
                item(' Investment Levels: 10'),
                item(' Min Withdrawal: 1'),
                item(' Max Withdrawal: 250'),
                item(' Min Deposit: 1'),
                item(' Max Deposit: 100'),
                item(' Max Network Earning Daily: 100'),
                item(' Max Network Earning Weekly: 500'),
              ],
            ),
          ),

          Expanded(
              child: Column(
                children: [
                  item('Max Downline: 3'),
                  item('Profit Return In 30 Days'),
                  item(r'Maximum Investment $50'),
                  item(r'Minimum Profit $200'),
                  item('Just Click To Try This'),
                ],
              )
          ),



        ],
      );
    }
    return Column(
      children: [
        item(' Membership Levels: 10'),
        item(' Investment Levels: 10'),
        item(' Min Withdrawal: 1'),
        item(' Max Withdrawal: 250'),

      ],
    );
  }

  Widget item(String name){
    return ListTile(
      leading: ImageIcon(AssetImage(AppImages.ic_check),color: AppColors.secondaryColor,),
      title: Text('$name',
        style: GoogleFonts.poppins(color: Colors.black,
            fontWeight: FontWeight.w300,
          fontSize: size==SecreenSize.small?10:13
        ),
      ),
    );
  }

}
