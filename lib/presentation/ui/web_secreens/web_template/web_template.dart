import 'package:ayoub_baali/core/constants/enums.dart';
import 'package:ayoub_baali/presentation/ui/components/web_footer.dart';
import 'package:ayoub_baali/presentation/ui/components/web_header.dart';

import 'package:ayoub_baali/presentation/ui/web_secreens/web_template/web_template_state.dart';
import 'package:ayoub_baali/routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';




class WebTemplate extends StatelessWidget {

  final Widget child;

   WebTemplate({required this.child});

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
        footer: WebFooter(size: size),
      header: WebHeader(size: size,
        onclick: onMenuSelected,
        onLogin:onLogin,
        onSignUp:()=> onSignUp(context),
        items: [
          MenuItem('Home', Routes.landing),
          MenuItem('About Us', Routes.landing),
          MenuItem('Plan', Routes.landing),
          MenuItem('Announcement', Routes.landing),
          MenuItem('Contact Us', Routes.landing),
          MenuItem('Download', Routes.landing),
        ],
      ),
      child:child,
    );
  }





  void onMenuSelected(MenuItem item){
    print(item.name);
  }
  void onLogin(){
    print('login');
  }
  void onSignUp(BuildContext context){
    GoRouter.of(context).go(Routes.signup);
  }

}

