import 'package:anchorageislamabad/core/utils/size_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import '../../baseviews/baseview_auth_screen.dart';
import '../../core/utils/color_constant.dart';
import '../../core/utils/helper_functions.dart';
import '../../core/utils/image_constant.dart';
import '../../routes/app_routes.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/animated_custom_button.dart';
import '../../widgets/common_image_view.dart';
import '../../widgets/custom_outlined_button.dart';
import '../../widgets/custom_radio_button.dart';
import '../../widgets/custom_text.dart';
import '../../widgets/custom_textfield_new.dart';
import 'controller/signup_controller.dart';
//check commit
// ignore_for_file: must_be_immutable
class SignUpScreen extends GetWidget<SignUpController> {
  final selectedOption = RxBool(false);
  SignUpScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return BaseviewAuthScreen(
      image: true,
      imageShown: ImageConstant.backgroundImage,
      child: Form(
        key: controller.formKey,
        child: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: Padding(
              padding: getPadding(top: 100,left: 10,right: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MyText(title: "Register",
                    clr: ColorConstant.whiteA700,
                    fontSize: 35,
                  ),
                  SizedBox(height: getVerticalSize(10),),
                  Container(
                    padding: getPadding(left: 10,right: 10),
                    margin: getMargin(left: 10,right: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: ColorConstant.whiteA700,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: getVerticalSize(10),),
                        Center(
                          child: CommonImageView(
                            imagePath: ImageConstant.appLogo,
                          ),
                        ),
                        SizedBox(height: getVerticalSize(5),),
                        CustomTextField(
                          fieldText: "First Name".tr,
                          controller: controller.emailController,
                          isFinal: false,
                          keyboardType: TextInputType.emailAddress,
                          limit: HelperFunction.EMAIL_VALIDATION,
                          validator: (value) {
                            return HelperFunction.fullNameFieldValidator(value!);
                          },
                        ),
                        SizedBox(height: getVerticalSize(5),),
                        CustomTextField(
                          fieldText: "Last Name".tr,
                          controller: controller.emailController,
                          isFinal: false,
                          keyboardType: TextInputType.emailAddress,
                          limit: HelperFunction.EMAIL_VALIDATION,
                          validator: (value) {
                            return HelperFunction.fullNameFieldValidator(value!);
                          },
                        ),
                        SizedBox(height: getVerticalSize(5),),
                        CustomTextField(
                          fieldText: "lbl_email_address".tr,
                          controller: controller.emailController,
                          isFinal: false,
                          keyboardType: TextInputType.emailAddress,
                          limit: HelperFunction.EMAIL_VALIDATION,
                          validator: (value) {
                            return HelperFunction.emailValidate(value!);
                          },
                        ),
                        SizedBox(height: getVerticalSize(5),),
                       Obx(() =>  CustomTextField(
                         // postPixText: SvgPicture.asset(
                         //     controller.isShowPassword.value == true
                         //         ? ImageConstant.showPass
                         //         : ImageConstant.imgCheckmark1,
                         //   color: ColorConstant.appDescriptionTextColor,
                         // ),
                         sufixIconOnTap: () {
                           controller.isShowPassword.value =
                               HelperFunction.showPassword(
                                   controller.isShowPassword.value);
                         },
                         limit: 15,
                         inputFormatters: [
                           LengthLimitingTextInputFormatter(30),
                         ],
                         fieldText: "lbl_password".tr,
                         controller: controller.passwordController,
                         isFinal: false,
                         keyboardType: TextInputType.visiblePassword,
                         isPassword: controller.isShowPassword.value,
                         validator: (value) {
                           return HelperFunction.passwordValidate(value!);
                         },
                       ),
                       ),
                        SizedBox(height: getVerticalSize(5),),
                        CustomTextField(
                          fieldText: "Mobile Number".tr,
                          controller: controller.emailController,
                          isFinal: false,
                          keyboardType: TextInputType.emailAddress,
                          limit: HelperFunction.EMAIL_VALIDATION,
                          validator: (value) {
                            return HelperFunction.fullNameFieldValidator(value!);
                          },
                        ),
                        SizedBox(height: getVerticalSize(16),),

                        SizedBox(height: getVerticalSize(16),),

                        MyAnimatedButton(
                          radius: 15.0,
                          height: getVerticalSize(50),
                          width: getHorizontalSize(400),
                          fontSize: 16 ,
                          bgColor: ColorConstant.anbtnBlue,
                          controller: controller.btnController,
                          title: "Sign Up".tr,
                          onTap: () async {
                           // controller.loginAPI(context);
                          },
                        ),
                        SizedBox(height: getVerticalSize(20)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            MyText(title: "Already have an Account?"),
                            GestureDetector(
                                onTap: (){
                                Get.back();
                                },
                                child: MyText(title: "Login",clr: ColorConstant.anbtnBlue,customWeight: FontWeight.bold,)),

                          ],
                        ),
                        SizedBox(height: getVerticalSize(20)),

                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget


}
