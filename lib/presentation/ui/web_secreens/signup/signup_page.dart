import 'package:ayoub_baali/core/constants/enums.dart';
import 'package:ayoub_baali/presentation/ui/secreens/template/template_state.dart';
import 'package:ayoub_baali/presentation/ui/web_secreens/signup/components/form.dart';
import 'package:ayoub_baali/presentation/ui/web_secreens/signup/components/header.dart';
import 'package:ayoub_baali/presentation/ui/web_secreens/signup/components/stay_connected.dart';
import 'package:ayoub_baali/presentation/ui/web_secreens/web_template/web_template_state.dart';
import 'package:ayoub_baali/routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';




class SignUpPage extends StatelessWidget {
  late SecreenSize size;
  late double width;

   SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    size=WebTemplateState.sizeOf(context);
    width=WebTemplateState.widthOf(context);



    return Scaffold(
      body: ListView(
        children: [
          if(size==SecreenSize.large)
          WebTemplateState.headerOf(context),



          if(size!=SecreenSize.large)
            SignUpHeader(size: size),


          SizedBox(height: 60,),

          SignForm(size: size,register: ()=>GoRouter.of(context).go(Routes.dashboard)),


          if(size==SecreenSize.large)
            Padding(
              padding: const EdgeInsets.only(top:38.0),
              child: StayConnected(),
            ),




          SizedBox(height: 60,),
          if(size==SecreenSize.large)
          WebTemplateState.footerOf(context),
        ],
      ),
    );
  }
}
