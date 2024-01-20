import 'package:ayoub_baali/core/constants/enums.dart';
import 'package:ayoub_baali/presentation/ui/web_secreens/forget_password/components/forget_pass_form.dart';
import 'package:ayoub_baali/presentation/ui/web_secreens/forget_password/components/forget_pass_header.dart';
import 'package:ayoub_baali/presentation/ui/web_secreens/forget_password/components/stay_connected.dart';
import 'package:ayoub_baali/presentation/ui/web_secreens/web_template/web_template_state.dart';
import 'package:flutter/material.dart';




class ForgetPassPage extends StatelessWidget {
  late SecreenSize size;
  late double width;


   ForgetPassPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    size=WebTemplateState.sizeOf(context);
    width=WebTemplateState.widthOf(context);

    return Scaffold(
      body: ListView(
        children: [
          WebTemplateState.headerOf(context),

          if(size!=SecreenSize.large)
            ForgetPassHeader(size: size,),

          const SizedBox(height: 50,),
          ForgetPassForm(size: size,),
          const SizedBox(height: 20,),
          if(size==SecreenSize.large)
          ForgetPassStayConnected(width: width),
          const SizedBox(height: 50,),
          WebTemplateState.footerOf(context)
        ],
      ),
    );
  }
}
