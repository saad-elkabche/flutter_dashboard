import 'package:ayoub_baali/core/constants/app_images_icons.dart';
import 'package:flutter/material.dart';



class WebBackDecoration extends StatelessWidget {

  double decorationHeight;
  double containerHeight;
  bool isPortrait;

  Widget child;




  WebBackDecoration({
    required this.decorationHeight,
    required this.containerHeight,
    this.isPortrait=false,
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
            decoration:  BoxDecoration(
              image: DecorationImage(image: AssetImage(isPortrait?AppImages.img_portrait_decoration:AppImages.img_decoration_web),fit: BoxFit.fill),
            ),
          ),
          child
        ],
      ),
    );
  }
}


