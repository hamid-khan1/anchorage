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
import '../../widgets/custom_textfield_forms.dart';
import '../../widgets/no_internet_found.dart';
import '../../widgets/paginations/paged_listview.dart';
import '../../widgets/widgets_shimmer.dart';
import 'controller/complaints_controller.dart';

class ComplaintScreen extends StatelessWidget {
  ComplaintsController controller = Get.put(ComplaintsController());
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
          padding: getPadding(left: 20,right: 20),
          child: Column(
            children: [
              Padding(
                padding: getPadding(left: 10),
                child: CustomAppBar(
                  title: MyText(title: "Complaint",clr: ColorConstant.whiteA700,fontSize: 20,customWeight: FontWeight.w500,),
                  centerTitle: true,
                  leading: Icon(Icons.arrow_back_ios),
                  trailing: IconButton(
                    icon: const Icon(Icons.menu),
                    onPressed: () {
                      Get.toNamed(AppRoutes.menuPage);

                    },
                  ),

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
                       // MyText(title: "Monday Mon-03-2024 10:12 PM",clr: ColorConstant.apppWhite,fontSize: 12,),
                        SizedBox(height: getVerticalSize(10),),
                        Container(
                          decoration: BoxDecoration(
                            color: ColorConstant.apppWhite,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          width: double.infinity,
                          padding: getPadding(left: 30, right: 30, top: 20, bottom: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Stack(
                                children: [
                                  CommonImageView(
                                    imagePath: ImageConstant.complaintImage,
                                    height: getVerticalSize(120),
                                    width: double.infinity,
                                  ),
                                  Positioned(
                                    bottom: getVerticalSize(0), // Position halfway up the image
                                    right: 0, // Align at the right
                                    child: CommonImageView(
                                      imagePath: ImageConstant.complaintAddIcon,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: getVerticalSize(10)),
                              MyText(title: "Complaint Type", fontSize: 12),
                              SizedBox(height: getVerticalSize(10)),
                              MyText(title: "Street Lights", fontSize: 16, clr: ColorConstant.antextGrayDark, customWeight: FontWeight.bold),
                              SizedBox(height: getVerticalSize(10)),
                              MyText(title: "Description", fontSize: 12),
                              SizedBox(height: getVerticalSize(10)),
                              MyText(title: "Street light not worked", fontSize: 16, clr: ColorConstant.antextGrayDark, customWeight: FontWeight.bold),
                              SizedBox(height: getVerticalSize(15)),
                              Center(child: MyText(title: "Edit Complaint", fontSize: 12,clr: ColorConstant.anbtnBlue,)),
                            ],
                          ),
                        ),
                        SizedBox(height: getVerticalSize(16),),
                        MyText(title: "Feedback / Message",fontSize: 16,clr: ColorConstant.antextGrayDark,customWeight: FontWeight.bold,),
                        SizedBox(height: getVerticalSize(16),),
                        CustomTextFieldForms(
                          hintText: "Type Your text here",
                          controller: controller.emailController,
                          isFinal: false,
                          keyboardType: TextInputType.streetAddress,
                          limit: 80,
                          maxLines: 8,
                          validator: (value) {
                            return HelperFunction.fullNameFieldValidator(value!);
                          },
                        ),
                        SizedBox(height: getVerticalSize(16),),

                        MyAnimatedButton(
                          radius: 5.0,
                          height: getVerticalSize(45),
                          width: getHorizontalSize(400),
                          fontSize: 16 ,
                          bgColor: ColorConstant.anbtnBlue,
                          controller: controller.btnController,
                          title: "Send Message".tr,
                          onTap: () async {

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
