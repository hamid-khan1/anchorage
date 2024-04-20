import 'package:anchorageislamabad/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../baseviews/baseview_process_screen.dart';
import '../../core/model_classes/deal_model.dart';
import '../../core/utils/color_constant.dart';
import '../../core/utils/helper_functions.dart';
import '../../core/utils/image_constant.dart';
import '../../core/utils/size_utils.dart';
import '../../routes/app_routes.dart';
import '../../widgets/animated_custom_button.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/common_image_view.dart';
import '../../widgets/custom_expensiontile.dart';
import '../../widgets/custom_textfield_forms.dart';
import '../../widgets/custom_textfield_new.dart';
import '../../widgets/no_internet_found.dart';
import '../../widgets/paginations/paged_listview.dart';
import '../../widgets/widgets_shimmer.dart';
import 'controller/myprofile_controller.dart';

class MyprofileScreen extends StatelessWidget {
  MyprofileController controller = Get.put(MyprofileController());
 // const DiscoverScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/background.png'), // Replace 'assets/background_image.jpg' with your image path
          fit: BoxFit.cover, // Adjust as needed
        ),
      ),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: getPadding(left: 10),
          child: Column(

            children: [
              CustomAppBar(
                title: MyText(title: "My Profile",clr: ColorConstant.whiteA700,fontSize: 20,customWeight: FontWeight.w500,),
                centerTitle: true,
                leading: InkWell(
                  onTap: (){
                    Navigator.of(context).pop();

                  },
                    child: Icon(Icons.arrow_back_ios)),
                trailing: IconButton(
                  icon: const Icon(Icons.menu),
                  onPressed: () {
                    Get.toNamed(AppRoutes.menuPage);

                  },
                ),

              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: getPadding(all: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: ColorConstant.apppWhite,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          width: double.infinity,
                          padding: getPadding(left: 30,right: 30,top: 20,bottom: 20),
                          child:  Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CommonImageView(
                                imagePath: ImageConstant.profileIcon,
                                height: 100,
                                width: 100,
                              ),
                              SizedBox(height: getVerticalSize(10),),
                              MyText(title: "David Warner",fontSize: 22,),
                              MyText(title: "davidwarner921@yopmail.com",clr: ColorConstant.antextlightgray,fontSize: 12,),
                              SizedBox(height: getVerticalSize(10),),
                              MyText(title: "Upload profile",clr: ColorConstant.anblueText,fontSize: 12,),
                            ],
                          ),
                        ),

                        SizedBox(height: getVerticalSize(10),),
                        MyText(title: "First Name",fontSize: 16,clr: ColorConstant.textgraydark,),
                        SizedBox(height: getVerticalSize(10),),
                        CustomTextFieldForms(
                          controller: controller.emailController,
                          isFinal: false,
                          keyboardType: TextInputType.name,
                          limit: 80,
                          validator: (value) {
                            return HelperFunction.fullNameFieldValidator(value!);
                          },
                        ),
                        SizedBox(height: getVerticalSize(10),),
                        MyText(title: "Last Name",fontSize: 16,clr: ColorConstant.textgraydark,),
                        SizedBox(height: getVerticalSize(10),),
                        CustomTextFieldForms(
                          controller: controller.emailController,
                          isFinal: false,
                          keyboardType: TextInputType.name,
                          limit: 80,
                          validator: (value) {
                            return HelperFunction.fullNameFieldValidator(value!);
                          },
                        ),
                        SizedBox(height: getVerticalSize(10),),
                        MyText(title: "Email Address",fontSize: 16,clr: ColorConstant.textgraydark,),
                        SizedBox(height: getVerticalSize(10),),
                        CustomTextFieldForms(
                          controller: controller.emailController,
                          isFinal: false,
                          keyboardType: TextInputType.emailAddress,
                          limit: 80,
                          validator: (value) {
                            return HelperFunction.emailValidate(value!);
                          },
                        ),
                        SizedBox(height: getVerticalSize(10),),
                        MyText(title: "CNIC",fontSize: 16,clr: ColorConstant.textgraydark,),
                        SizedBox(height: getVerticalSize(10),),
                        CustomTextFieldForms(
                          controller: controller.emailController,
                          isFinal: false,
                          keyboardType: TextInputType.emailAddress,
                          limit: 80,
                          validator: (value) {
                            return HelperFunction.fullNameFieldValidator(value!);
                          },
                        ),
                        SizedBox(height: getVerticalSize(10),),
                        MyText(title: "Present Address",fontSize: 16,clr: ColorConstant.textgraydark,),
                        SizedBox(height: getVerticalSize(10),),
                        CustomTextFieldForms(
                          controller: controller.emailController,
                          isFinal: false,
                          keyboardType: TextInputType.streetAddress,
                          limit: 80,
                          validator: (value) {
                            return HelperFunction.fullNameFieldValidator(value!);
                          },
                        ),
                        SizedBox(height: getVerticalSize(10),),
                        MyText(title: "Old Password",fontSize: 16,clr: ColorConstant.textgraydark,),
                        SizedBox(height: getVerticalSize(10),),
                        CustomTextFieldForms(
                          controller: controller.emailController,
                          isFinal: false,
                          keyboardType: TextInputType.streetAddress,
                          limit: 80,
                          validator: (value) {
                            return HelperFunction.fullNameFieldValidator(value!);
                          },
                        ),
                        SizedBox(height: getVerticalSize(10),),
                        MyText(title: "New Password",fontSize: 16,clr: ColorConstant.textgraydark,),
                        SizedBox(height: getVerticalSize(10),),
                        CustomTextFieldForms(
                          controller: controller.emailController,
                          isFinal: false,
                          keyboardType: TextInputType.streetAddress,
                          limit: 80,
                        //  maxLines: 8,
                          validator: (value) {
                            return HelperFunction.fullNameFieldValidator(value!);
                          },
                        ),
                        SizedBox(height: getVerticalSize(16),),

                        MyAnimatedButton(
                          radius: 15.0,
                          height: getVerticalSize(60),
                          width: getHorizontalSize(400),
                          fontSize: 20 ,
                          bgColor: ColorConstant.anbtnBlue,
                          controller: controller.btnController,
                          title: "Update".tr,
                          onTap: () async {
                            // controller.loginAPI(context);
                          },
                        ),



                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}
