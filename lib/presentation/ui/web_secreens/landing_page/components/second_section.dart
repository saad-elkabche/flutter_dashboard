import 'package:ayoub_baali/core/constants/app_color.dart';
import 'package:ayoub_baali/core/constants/enums.dart';
import 'package:ayoub_baali/presentation/ui/components/two_color_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';






class SecondSection extends StatelessWidget {
  SecreenSize size;

   SecondSection({required this.size});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TwoColorText(
          textAlign: TextAlign.center,
          fontSize: 30,
          colorOne: AppColors.secondaryColor,
          colortwo: AppColors.primaryColor,
          textOne: 'We are offering three types of ',
          textTwo: 'earning plans',
        ),
        const SizedBox(height: 15,),

        ConstrainedBox(
          constraints: const BoxConstraints(
            maxWidth: 600
          ),
          child: Text(
            'Embrace the secure investment opportunity that comes your way join now '
            'and secure your financial future with EBP’s trusted online crypto earning '
            'and Unilevel MLM platform. We are offering three types of earning plans.'
            '1) Flexible Plan. 2) Non Flexible Plan. 3) BP Special. ',
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(color: Colors.black,),
          ),
        )

      ],
    );
  }
}
