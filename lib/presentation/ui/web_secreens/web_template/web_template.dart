import 'package:ayoub_baali/core/constants/enums.dart';
import 'package:ayoub_baali/presentation/ui/components/web_footer.dart';
import 'package:ayoub_baali/presentation/ui/components/web_header.dart';

import 'package:ayoub_baali/presentation/ui/web_secreens/web_template/web_template_state.dart';
import 'package:ayoub_baali/routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';




class WebTemplate extends StatefulWidget {

  final Widget child;

   WebTemplate({required this.child});

  @override
  State<WebTemplate> createState() => _WebTemplateState();
}

class _WebTemplateState extends State<WebTemplate> {
  @override
  Widget build(BuildContext context) {

    double width=MediaQuery.sizeOf(context).width;
    double height=MediaQuery.sizeOf(context).height;
    SecreenSize size;

    if(width<=600){
      size=SecreenSize.small;
    }else if(width<=1000){
      size=SecreenSize.medium;
    }else{
      size=SecreenSize.large;
    }




    return WebTemplateState(
        width: width,
        size: size,
        height: height,
        footer: WebFooter(size: size,onPrivacyClick: ()=>GoRouter.of(context).go(Routes.privacyPolicy)),
      header: WebHeader(size: size,
        onclick: onMenuSelected,
        onLogin:onLogin,
        onSignUp:()=> onSignUp(context),
        items: [
          MenuItem('Home', Routes.landing),
          MenuItem('About Us', Routes.aboutUs),
          MenuItem('Plan', Routes.landing),
          MenuItem('Announcement', Routes.landing),
          MenuItem('Contact Us', Routes.landing),
          MenuItem('Download', Routes.landing),
        ],
      ),
      child:widget.child,
    );
  }

  void onMenuSelected(MenuItem item){
    GoRouter.of(context).go(item.location);
  }

  void onLogin(){
    print('login');
  }

  void onSignUp(BuildContext context){
    GoRouter.of(context).go(Routes.signup);
  }
}

