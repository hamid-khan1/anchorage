import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:lottie/lottie.dart';
import '../../core/utils/color_constant.dart';
import '../../core/utils/image_constant.dart';
import '../../widgets/app_status_bar.dart';
import '../../widgets/common_image_view.dart';
import '../../widgets/custom_text.dart';
import 'controller/splash_controller.dart';

// ignore_for_file: must_be_immutable
class SplashScreen extends GetWidget<SplashController> {
  const SplashScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: AppStatusBar.getTransparentStatusBar(),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: ColorConstant.black900,
        body: SafeArea(
          top: false,
          child: Stack(
            children: [
              Align(
                alignment: Alignment.center,
                child: CommonImageView(
                  imagePath: ImageConstant.imgSplash,
                  width: double.infinity,

                )

                // Container(
                //   color: ColorConstant.blackColor,
                //     child: Lottie.asset('assets/lotties/Animation - 1705142592779.json')),
              ),


              // Align(
              //   alignment:Alignment.bottomCenter,
              //   child:  MyText(title:"App Version:${controller.packageInfo.value.version}",
              //       clr: ColorConstant.whiteA700,
              //       fontSize: getFontSize(15),
              //       customWeight: FontWeight.w700,
              //       height: getVerticalSize(0.85)
              //   ),)
            ],
          ),
        ),
      ),
    );
  }
}
