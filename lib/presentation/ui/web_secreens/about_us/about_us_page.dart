import 'package:ayoub_baali/core/constants/enums.dart';
import 'package:ayoub_baali/presentation/ui/web_secreens/about_us/components/about_us_section.dart';
import 'package:ayoub_baali/presentation/ui/web_secreens/about_us/components/auto_supporting.dart';
import 'package:ayoub_baali/presentation/ui/web_secreens/about_us/components/features.dart';
import 'package:ayoub_baali/presentation/ui/web_secreens/about_us/components/header.dart';
import 'package:ayoub_baali/presentation/ui/web_secreens/about_us/components/marketing.dart';
import 'package:ayoub_baali/presentation/ui/web_secreens/about_us/components/stay_connected.dart';
import 'package:ayoub_baali/presentation/ui/web_secreens/web_template/web_template_state.dart';
import 'package:flutter/material.dart';






class AboutUsPage extends StatelessWidget {

  late SecreenSize size;
  late double width;

   AboutUsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    size=WebTemplateState.sizeOf(context);
    width=WebTemplateState.widthOf(context);

    return Scaffold(
      body: ListView(
        children: [
          WebTemplateState.headerOf(context),

          AboutUsHeader(width: width, size: size),

          const SizedBox(height: 30,),
          AboutUsSection(size: size,width: width),
          const SizedBox(height: 40,),
          AboutUsFeatures(width: width,size: size,),
          const SizedBox(height: 40,),
          AboutUsMarketing(size: size, width: width),
          const SizedBox(height: 40,),
          AutoSupporting(),
          const SizedBox(height: 80,),
          AboutUsStayConnected(width: width),
          const SizedBox(height: 80,),




          WebTemplateState.footerOf(context)
        ],
      ),
    );
  }
}
