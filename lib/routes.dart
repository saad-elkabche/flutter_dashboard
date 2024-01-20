

import 'package:ayoub_baali/presentation/ui/secreens/achievements/achievements.dart';
import 'package:ayoub_baali/presentation/ui/secreens/logout/logout_secreen.dart';
import 'package:ayoub_baali/presentation/ui/secreens/membership/membership.dart';
import 'package:ayoub_baali/presentation/ui/secreens/secreens.dart';
import 'package:ayoub_baali/presentation/ui/web_secreens/about_us/about_us_page.dart';
import 'package:ayoub_baali/presentation/ui/web_secreens/forget_password/forget_pass_page.dart';
import 'package:ayoub_baali/presentation/ui/web_secreens/landing_page/landing_page.dart';
import 'package:ayoub_baali/presentation/ui/web_secreens/privacy_policy/privacy_policy.dart';
import 'package:ayoub_baali/presentation/ui/web_secreens/signup/signup_page.dart';
import 'package:ayoub_baali/presentation/ui/web_secreens/web_template/web_template.dart';
import 'package:go_router/go_router.dart';

class Routes{

  static const String dashboard='/dashboard';
  static const String faSecurity='/2fa_security';
  static const String addMoney='/add_money';
  static const String changePass='/change_password';
  static const String kycVerification='/kyc_verification';
  static const String moneyTransfer='/money_transfer';
  static const String myInvest='/my_invest';
  static const String plan='/plan';
  static const String profile='/profile';
  static const String profit_log='/profit_log';
  static const String support='/support';
  static const String template='/template';
  static const String transaction='/transaction';
  static const String withdraw='/withdraw';
  static const String logout='/logout';

  static const String membership='/membership';
  static const String achievements='/achievements';



  //web
  static const String landing='/';
  static const String signup='/signup';
  static const String aboutUs='/aboutUs';
  static const String forgetPass='/forgetPass';
  static const String privacyPolicy='/privacyPolicy';

  static GoRouter router=GoRouter(

    initialLocation:landing,
      routes: [





        ShellRoute(
          pageBuilder: (context,state,child){
            return NoTransitionPage(child: WebTemplate(child: child));
          },
            routes:[
              GoRoute(
                  path: landing,
                  pageBuilder: (context,state)=>NoTransitionPage(child: LandingPage())
              ),
              GoRoute(
                  path: signup,
                  pageBuilder: (context,state)=>NoTransitionPage(child: SignUpPage())
              ),
              GoRoute(
                  path: aboutUs,
                pageBuilder: (context,state)=>NoTransitionPage(child: AboutUsPage())
                      
              ),
              GoRoute(
                  path: forgetPass,
                  pageBuilder: (context,state)=>NoTransitionPage(child: ForgetPassPage())

              ),
              GoRoute(
                  path: privacyPolicy,
                  pageBuilder: (context,state)=>NoTransitionPage(child: PrivacyPolicy())

              ),
            ]
        ),





        ShellRoute(
          pageBuilder: (context,state,child){
            return NoTransitionPage(child: Template(child: child));
          },
            routes:[
              GoRoute(
                  path: dashboard,
                  pageBuilder: (context,state){
                    return NoTransitionPage(child: DashboardSecreen());
                  }
              ),
              GoRoute(
                  path: myInvest,
                  pageBuilder: (context,state){
                    return NoTransitionPage(child: MyInvestSecreen());
                  }
              ),
              GoRoute(
                  path: plan,
                  pageBuilder: (context,state){
                    return NoTransitionPage(child: PlanSecreen());
                  }
              ),
              GoRoute(
                  path: addMoney,
                  pageBuilder: (context,state){
                    return NoTransitionPage(child: AddMoneySecreen());
                  }
              ),
              GoRoute(
                  path: moneyTransfer,
                  pageBuilder: (context,state){
                    return NoTransitionPage(child: MoneyTransfertSecreen());
                  }
              ),
              GoRoute(
                  path: profit_log,
                  pageBuilder: (context,state){
                    return NoTransitionPage(child: ProfitLogSecreen());
                  }
              ),
              GoRoute(
                  path: withdraw,
                  pageBuilder: (context,state){
                    return NoTransitionPage(child: WithDrawSecreen());
                  }
              ),
              GoRoute(
                  path: transaction,
                  pageBuilder: (context,state){
                    return NoTransitionPage(child: TransactionSecreen());
                  }
              ),
              GoRoute(
                  path: support,
                  pageBuilder: (context,state){
                    return NoTransitionPage(child: SupportSecreen());
                  }
              ),
              GoRoute(
                  path: kycVerification,
                  pageBuilder: (context,state){
                    return NoTransitionPage(child: KycVerificationSecreen());
                  }
              ),
              GoRoute(
                  path: faSecurity,
                  pageBuilder: (context,state){
                    return NoTransitionPage(child: IIFASecurityScreen());
                  }
              ),
              GoRoute(
                  path: changePass,
                  pageBuilder: (context,state){
                    return NoTransitionPage(child: ChangePassSecreen());
                  }
              ),
              GoRoute(
                  path: membership,
                  pageBuilder: (context,state){
                    return NoTransitionPage(child: Membership());
                  }
              ),GoRoute(
                  path: achievements,
                  pageBuilder: (context,state){
                    return NoTransitionPage(child: Achievements());
                  }
              ),
              GoRoute(
                  path: profile,
                  pageBuilder: (context,state){
                    return NoTransitionPage(child: ProfileSecreen());
                  }
              ),
              GoRoute(
                  path: logout,
                  pageBuilder: (context,state){
                    return NoTransitionPage(child: LogoutSecreen());
                  }
              ),
            ]
        ),
      ]
  );

}