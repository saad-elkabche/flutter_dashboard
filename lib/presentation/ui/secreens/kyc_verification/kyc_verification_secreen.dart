import 'package:ayoub_baali/core/constants/enums.dart';
import 'package:ayoub_baali/presentation/ui/components/components.dart';
import 'package:ayoub_baali/presentation/ui/secreens/kyc_verification/components/kyc_form.dart';
import 'package:ayoub_baali/presentation/ui/secreens/kyc_verification/components/kyc_title.dart';
import 'package:ayoub_baali/presentation/ui/secreens/kyc_verification/components/warning.dart';
import 'package:ayoub_baali/presentation/ui/secreens/template/template_state.dart';
import 'package:flutter/material.dart';




class KycVerificationSecreen extends StatelessWidget {
  late SecreenSize size;
  late double width;
  KycVerificationSecreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    size=TemplateState.sizeOf(context);
    width=TemplateState.widthOf(context);

    return ListView(
      children: [
        KycWarning(),
        const SizedBox(height: 20,),
        Padding(
          padding: const EdgeInsets.all(18.0),
          child: KycTitle(size: size),
        ),
        const SizedBox(height: 25,),
        size==SecreenSize.small
            ?
        KYCForm(size: size)
            :
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: MainContainer(child: KYCForm(size: size,)),
            ),
        SizedBox(height: 40,),

      ],
    );
  }
}
