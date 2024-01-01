/*

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iptv_player/core/constants/app_colors.dart';
import 'package:iptv_player/core/constants/enums.dart';
import 'package:iptv_player/presentation/ui/components/components/dialogue_infos.dart';

class UiMessage extends StatelessWidget {
  double width;
  double height;
  MessageUi messageUi;
  UiMessage({required this.width,required this.height,required,required this.messageUi }) ;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
      child: Container(
        constraints: BoxConstraints(
          maxHeight: height
        ),

        width: width,
        height: height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        child: Row(
          children: [
            _icon(),
            Text(this.messageUi.msg,style: GoogleFonts.acme(color: AppColors.primaryColor),)
          ],
        ),
      ),
    );
  }

  Widget _icon(){
    switch(messageUi.status){
      case AppStatus.warning:
        return Icon(Icons.warning);
      case AppStatus.error:
        return Icon(Icons.error);
      case AppStatus.infos:
        return Icon(Icons.info_outline);
      case AppStatus.loading:
        return Icon(Icons.downloading);
      case AppStatus.success:
        return Icon(Icons.check);
        default:
      return const Icon(Icons.ac_unit_outlined);

    }
  }


}


*/
