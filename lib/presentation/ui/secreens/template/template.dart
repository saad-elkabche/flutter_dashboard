import 'package:ayoub_baali/core/constants/app_color.dart';
import 'package:ayoub_baali/core/constants/app_images_icons.dart';
import 'package:ayoub_baali/core/constants/enums.dart';
import 'package:ayoub_baali/presentation/ui/components/log_out_popup.dart';
import 'package:ayoub_baali/presentation/ui/secreens/template/components/header.dart';
import 'package:ayoub_baali/presentation/ui/secreens/template/components/menu.dart';
import 'package:ayoub_baali/presentation/ui/secreens/template/template_state.dart';
import 'package:ayoub_baali/routes.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';



class Template extends StatefulWidget {
  Widget child;


  Template({required this.child});

  @override
  State<Template> createState() => _TemplateState();
}

class _TemplateState extends State<Template> {
  late SecreenSize size;
  late double width;
  late double height;
  GlobalKey<ScaffoldState> scaffoldState=GlobalKey<ScaffoldState>();
   int selectBottomMenuItem=0;
  String nameRoute='Dashboard';
  String currentLocation=Routes.dashboard;

  @override
  Widget build(BuildContext context) {
    currentLocation=GoRouterState.of(context).uri.toString();

     width=MediaQuery.sizeOf(context).width;
     height=MediaQuery.sizeOf(context).height;

    if(width<=600){
      size=SecreenSize.small;
    }else if(width<=1000){
      size=SecreenSize.medium;
    }else{
      size=SecreenSize.large;
    }


    return TemplateState(
      height: height,
      width: width,
      size: size,
      sacaffoldState: scaffoldState,
      child: SafeArea(
          child: size==SecreenSize.large
              ?Row(
            children: [
              Material(child: _menu(),
              ),
              Expanded(child: _content())
            ],
          ):_content()
      ),
    );
  }

  Widget _content(){
    return Scaffold(
      key: scaffoldState,
      //appBar: MyHeader(size: size,name:nameRoute,onMenuClicked: _onMenuClicked),
      drawer:size!=SecreenSize.large?_menu():null ,
      body: widget.child,
      bottomNavigationBar: size!=SecreenSize.large?BottomNavigationBar(
          backgroundColor: AppColors.primaryColor,

          currentIndex: 0,
          type: BottomNavigationBarType.fixed,
          onTap: (index){
            setState(() {
              selectBottomMenuItem=index;
            });
          },
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white,
          unselectedLabelStyle: GoogleFonts.poppins(color: Colors.white,fontSize: 11),
          selectedLabelStyle:GoogleFonts.poppins(color: AppColors.secondaryColor,fontSize: 11) ,
          items:[
            menuBottomNavItem('My Invest', AppImages.ic_my_invest,0==selectBottomMenuItem ),
            menuBottomNavItem('Add Money', AppImages.ic_money,1==selectBottomMenuItem ),
            menuBottomNavItem('Withdraw', AppImages.ic_withdraw_action,2==selectBottomMenuItem ),
            menuBottomNavItem('Network', AppImages.ic_network,3==selectBottomMenuItem ),
            menuBottomNavItem('Transaction', AppImages.ic_transaction_action,4==selectBottomMenuItem ),
          ]
      ):null,
    );
  }

  BottomNavigationBarItem menuBottomNavItem(String name,String icon,isSelected){
    return  BottomNavigationBarItem(
        icon: ImageIcon(AssetImage(icon),
          color:isSelected?Colors.white: AppColors.secondaryColor,
        ),
        label: name,
    );
  }



  Widget _menu() {
    return  Menu(
        currentLocation: currentLocation,
        items:[
          MenuItem('Dashboard', Routes.dashboard, AppImages.ic_dashboard),
          MenuItem('My Invest', Routes.myInvest, AppImages.ic_my_invest),
          MenuItem('Plan', Routes.plan, AppImages.ic_plans),
          MenuItem('Add Money', Routes.addMoney, AppImages.ic_my_invest),
          MenuItem('Money transfer', Routes.moneyTransfer, AppImages.ic_money_transfert),
          MenuItem('Profit log', Routes.profit_log, AppImages.ic_profit_log),
          MenuItem('Withdraw', Routes.withdraw, AppImages.ic_withdraw),
          MenuItem('Transaction', Routes.transaction, AppImages.ic_dashboard),
          MenuItem('Support', Routes.support, AppImages.ic_support),
          MenuItem('KYC verification', Routes.kycVerification, AppImages.ic_kyc),
          MenuItem('2FA Security', Routes.faSecurity, AppImages.ic_2fa),

         // MenuItem('Membership', Routes.membership, AppImages.ic_2fa),
          //MenuItem('Achievment', Routes.achievements, AppImages.ic_2fa),

          MenuItem('Change Password', Routes.changePass, AppImages.ic_change_pass),
          MenuItem('Profile', Routes.profile, AppImages.ic_profile),
          MenuItem('Logout', Routes.logout, AppImages.ic_logout),
        ],
        size: size,
        onItemClick: _onmenuItemSelected
    );
  }


  void _onmenuItemSelected(MenuItem menuItem) {
    scaffoldState.currentState!.closeDrawer();
    if(menuItem.location==Routes.logout){
      onLogout();
    }else{
      nameRoute=menuItem.name;
      currentLocation=menuItem.location;
      GoRouter.of(context).go(menuItem.location);
    }
  }

  void onLogout()async{
    var result=await showDialog(context: context,
        barrierColor: Colors.transparent,
        builder: (context)=>LogOutPopUp(width: width,));
    if(result ?? false){
      GoRouter.of(context).go(Routes.landing);
    }
  }

}


