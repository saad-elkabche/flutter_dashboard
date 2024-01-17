import 'package:ayoub_baali/core/constants/app_images_icons.dart';
import 'package:flutter/material.dart';



class WebBackDecoration extends StatelessWidget {

  double decorationHeight;
  double containerHeight;

  Widget child;




  WebBackDecoration({
    required this.decorationHeight,
    required this.containerHeight,
    required this.child
});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: containerHeight,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: [
          SizedBox(
            width:double.infinity,
            height: containerHeight,
          ),
          Container(
            width: double.infinity,
            height: decorationHeight,
            clipBehavior: Clip.none,
            decoration: const BoxDecoration(
              image: DecorationImage(image: AssetImage(AppImages.img_decoration_web),fit: BoxFit.fill),
            ),
          ),
          child
        ],
      ),
    );
  }
}


