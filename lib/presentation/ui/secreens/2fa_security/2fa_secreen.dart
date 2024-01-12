import 'package:ayoub_baali/core/constants/app_color.dart';
import 'package:ayoub_baali/core/constants/enums.dart';
import 'package:ayoub_baali/presentation/ui/secreens/2fa_security/components/google_authenticator.dart';
import 'package:ayoub_baali/presentation/ui/secreens/2fa_security/components/two_factor_authenticator.dart';
import 'package:ayoub_baali/presentation/ui/secreens/template/template_state.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';




class IIFASecurityScreen extends StatelessWidget {

  late SecreenSize size;
  late double width;


  IIFASecurityScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    size=TemplateState.sizeOf(context);
    width=TemplateState.widthOf(context);

    return ListView(
      children: [
        SizedBox(height: 40,),
         Padding(
           padding: const EdgeInsets.all(18.0),
           child: widgets(),
         )
      ],
    );
  }

  Widget widgets() {
    if(size==SecreenSize.large){
      return Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(child: TwoFactorAuthenticator(size: size,)),
          SizedBox(width:12 ,),
          Expanded(child:GoogleAuthenticator(size: size)),
        ],
      );
    }
    return Column(
      children: [
        TwoFactorAuthenticator(size: size,),
        const SizedBox(height: 20,),
        Text('Google Authenticator',style: GoogleFonts.poppins(color: AppColors.primaryColor,fontSize: 18,fontWeight: FontWeight.bold),),
        const SizedBox(height: 20,),
        GoogleAuthenticator(size: size)
      ],
    );
  }
}
