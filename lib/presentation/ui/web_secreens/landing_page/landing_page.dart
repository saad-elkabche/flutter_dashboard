import 'package:ayoub_baali/core/constants/enums.dart';
import 'package:ayoub_baali/presentation/ui/components/web_footer.dart';
import 'package:ayoub_baali/presentation/ui/components/web_header.dart';
import 'package:ayoub_baali/presentation/ui/secreens/template/template_state.dart';
import 'package:ayoub_baali/presentation/ui/web_secreens/landing_page/components/first_section.dart';
import 'package:ayoub_baali/presentation/ui/web_secreens/landing_page/components/plans_section.dart';
import 'package:ayoub_baali/presentation/ui/web_secreens/landing_page/components/referral_program.dart';
import 'package:ayoub_baali/presentation/ui/web_secreens/landing_page/components/safety_security.dart';
import 'package:ayoub_baali/presentation/ui/web_secreens/landing_page/components/second_section.dart';
import 'package:ayoub_baali/presentation/ui/web_secreens/landing_page/components/section_foor.dart';
import 'package:ayoub_baali/presentation/ui/web_secreens/landing_page/components/section_three.dart';
import 'package:ayoub_baali/presentation/ui/web_secreens/landing_page/components/why_need_to_join_ebp.dart';
import 'package:ayoub_baali/presentation/ui/web_secreens/web_template/web_template_state.dart';
import 'package:ayoub_baali/routes.dart';
import 'package:flutter/material.dart';



class LandingPage extends StatelessWidget {
  late SecreenSize size;
  late double width;


   LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    size=WebTemplateState.sizeOf(context);
    width=WebTemplateState.widthOf(context);

    return Scaffold(
      body:ListView(
        children: [
          WebTemplateState.headerOf(context),
          FirstSection(size: size,getStarted: (){},learnMore: (){},),
          const SizedBox(height: 26,),
          SecondSection(size: size),
          const SizedBox(height: 26,),
          PlansSection(size: size),
          const SizedBox(height: 26,),
          SectionThree(size: size),
          const SizedBox(height: 26),
          ReferralProgram(size: size,width: width,),
          const SizedBox(height: 26,),
          SafetySecurity(size: size,),
          const SizedBox(height: 26,),
          SectionFour(size: size,width: width,),
          const SizedBox(height: 66,),
          WhyNeedJoinUs(size: size, width: width),
          const SizedBox(height: 66,),
          WebTemplateState.footerOf(context)
        ],
      )
    );
  }


}
