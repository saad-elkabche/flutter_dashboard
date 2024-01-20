import 'package:ayoub_baali/core/constants/enums.dart';
import 'package:ayoub_baali/presentation/ui/web_secreens/privacy_policy/components/header.dart';
import 'package:ayoub_baali/presentation/ui/web_secreens/privacy_policy/components/privacy_policy_widget.dart';
import 'package:ayoub_baali/presentation/ui/web_secreens/privacy_policy/components/stay_connected.dart';
import 'package:ayoub_baali/presentation/ui/web_secreens/web_template/web_template_state.dart';
import 'package:flutter/material.dart';



class PrivacyPolicy extends StatelessWidget {
  late SecreenSize size;
  late double width;

   PrivacyPolicy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    size=WebTemplateState.sizeOf(context);
    width=WebTemplateState.widthOf(context);

    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          WebTemplateState.headerOf(context),

          PrivacyPolicyHeader(width: width,size: size,),
          PrivacyPolicyWidgets(size: size,),
          const SizedBox(height: 40,),
          PrivacyPolicyStayConnected(width: width,),
          const SizedBox(height: 40,),



          WebTemplateState.footerOf(context),
        ],
      ),
    );
  }
}

