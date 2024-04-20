import 'package:anchorageislamabad/core/utils/image_constant.dart';
import 'package:anchorageislamabad/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../baseviews/baseview_process_screen.dart';
import '../../core/model_classes/deal_model.dart';
import '../../core/utils/color_constant.dart';
import '../../core/utils/helper_functions.dart';
import '../../core/utils/size_utils.dart';
import '../../routes/app_routes.dart';
import '../../widgets/animated_custom_button.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/common_image_view.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_expensiontile.dart';
import '../../widgets/custom_textfield_new.dart';
import '../../widgets/no_internet_found.dart';
import '../../widgets/outline_animated_custom_button.dart';
import '../../widgets/paginations/paged_listview.dart';
import '../../widgets/widgets_shimmer.dart';
import 'controller/serventforms_controller.dart';

class ServentFormsScreen extends StatelessWidget {
  ServentFormsController controller = Get.put(ServentFormsController());
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
                title: MyText(title: "Servant Card",clr: ColorConstant.whiteA700,fontSize: 20,customWeight: FontWeight.w500,),
                centerTitle: true,
                 leading: GestureDetector(
                   onTap: (){
                     Get.back();
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
                      children: [

                        SizedBox(height: getVerticalSize(10),),
                        Align(
                            alignment: Alignment.topLeft,
                            child: MyText(title: "Record Form",fontSize: 16,clr: ColorConstant.apppWhite,)),
                        SizedBox(height: getVerticalSize(10),),
                        CustomExpansionTile(
                          title: MyText(title:'OWNER INFORMATION',clr: ColorConstant.black900,fontSize: 16,),
                          children:  <Widget>[
                            Column(
                              children: [
                                CustomTextField(
                                  fieldText: "Full Name".tr,
                                  controller: controller.fullNameController,
                                  isFinal: false,
                                  keyboardType: TextInputType.emailAddress,
                                  limit: HelperFunction.EMAIL_VALIDATION,
                                  validator: (value) {
                                    return HelperFunction.empthyFieldValidator(value!);
                                  },
                                ),
                                SizedBox(height: getVerticalSize(5),),
                                CustomTextField(
                                  fieldText: "Father’s Name".tr,
                                  controller: controller.fathersController,
                                  isFinal: false,
                                  keyboardType: TextInputType.emailAddress,
                                  limit: HelperFunction.EMAIL_VALIDATION,
                                  validator: (value) {
                                    return HelperFunction.empthyFieldValidator(value!);
                                  },
                                ),
                                SizedBox(height: getVerticalSize(5),),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      child: CustomTextField(
                                        fieldText: "CNIC No.".tr,
                                        controller: controller.cnicController,
                                        isFinal: false,
                                        keyboardType: TextInputType.emailAddress,
                                        limit: HelperFunction.EMAIL_VALIDATION,
                                        validator: (value) {
                                          return HelperFunction.empthyFieldValidator(value!);
                                        },
                                      ),
                                    ),
                                    Expanded(
                                      child: CustomTextField(
                                        fieldText: "Mobile number".tr,
                                        controller: controller.mobileController,
                                        isFinal: false,
                                        keyboardType: TextInputType.emailAddress,
                                        validator: (value) {
                                          return HelperFunction.empthyFieldValidator(value!);
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: getVerticalSize(5),),
                                CustomTextField(
                                  fieldText: "House/Plot No.".tr,
                                  controller: controller.houseController,
                                  isFinal: false,
                                  keyboardType: TextInputType.emailAddress,
                                  limit: HelperFunction.EMAIL_VALIDATION,
                                  validator: (value) {
                                    return HelperFunction.empthyFieldValidator(value!);
                                  },
                                ),
                                SizedBox(height: getVerticalSize(5),),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      child: CustomTextField(
                                        fieldText: "Road".tr,
                                        controller: controller.roadController,
                                        isFinal: false,
                                        keyboardType: TextInputType.emailAddress,
                                        limit: HelperFunction.EMAIL_VALIDATION,
                                        validator: (value) {
                                          return HelperFunction.empthyFieldValidator(value!);
                                        },
                                      ),
                                    ),
                                    Expanded(
                                      child: CustomTextField(
                                        fieldText: "Street".tr,
                                        controller: controller.streetController,
                                        isFinal: false,
                                        keyboardType: TextInputType.emailAddress,
                                        validator: (value) {
                                          return HelperFunction.empthyFieldValidator(value!);
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: getVerticalSize(5),),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      child: CustomTextField(
                                        fieldText: "Block".tr,
                                        controller: controller.blockController,
                                        isFinal: false,
                                        keyboardType: TextInputType.emailAddress,
                                        limit: HelperFunction.EMAIL_VALIDATION,
                                        validator: (value) {
                                          return HelperFunction.empthyFieldValidator(value!);
                                        },
                                      ),
                                    ),
                                    Expanded(
                                      child: CustomTextField(
                                        fieldText: "Colony/Residential Area Name".tr,
                                        controller: controller.colonyController,
                                        isFinal: false,
                                        keyboardType: TextInputType.emailAddress,
                                        validator: (value) {
                                          return HelperFunction.empthyFieldValidator(value!);
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: getVerticalSize(15),),
                                Padding(
                                  padding: getPadding(left: 10,right: 10),
                                  child: CustomButton(
                                    width: getHorizontalSize(350),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                    color: ColorConstant.whiteA700,
                                    label: "Attach a clear image of yours".tr,
                                    textColor: ColorConstant.anbtnBlue,
                                    borderColor: ColorConstant.anbtnBlue,
                                     prefix: Icon(Icons.add_circle_outline,color: ColorConstant.anbtnBlue,),
                                    onPressed: () {
                                    },
                                  ),
                                ),
                                SizedBox(height: getVerticalSize(15),),
                                Padding(
                                  padding: getPadding(left: 10,right: 10),
                                  child: CustomButton(
                                    width: getHorizontalSize(350),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                    color: ColorConstant.whiteA700,
                                    label: "Attach a clear image of your CNIC front side".tr,
                                    textColor: ColorConstant.anbtnBlue,
                                    borderColor: ColorConstant.anbtnBlue,
                                    prefix: Icon(Icons.add_circle_outline,color: ColorConstant.anbtnBlue,),
                                    onPressed: () {
                                    },
                                  ),
                                ),
                                SizedBox(height: getVerticalSize(15),),
                                Padding(
                                  padding: getPadding(left: 10,right: 10),
                                  child: CustomButton(
                                    width: getHorizontalSize(350),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                    color: ColorConstant.whiteA700,

                                    label: "Attach a clear image of your CNIC back side".tr,
                                    textColor: ColorConstant.anbtnBlue,
                                    borderColor: ColorConstant.anbtnBlue,
                                    prefix: Icon(Icons.add_circle_outline,color: ColorConstant.anbtnBlue,),
                                    onPressed: () {
                                    },
                                  ),
                                ),
                                SizedBox(height: getVerticalSize(15),),
                                // Padding(
                                //   padding: getPadding(left: 10,right: 10),
                                //   child: MyAnimatedButton(
                                //     radius: 5.0,
                                //     height: getVerticalSize(50),
                                //     width: getHorizontalSize(400),
                                //     fontSize: 16 ,
                                //     bgColor: ColorConstant.anbtnBlue,
                                //     controller: controller.btnController,
                                //     title: "Add Owner Information".tr,
                                //     onTap: () async {
                                //       // controller.loginAPI(context);
                                //     },
                                //   ),
                                // ),
                                SizedBox(height: getVerticalSize(20),),
                              ],
                            )
                          ],
                        ),
                        SizedBox(height: getVerticalSize(10),),
                        CustomExpansionTile(
                          title: MyText(title:'Servent Information',clr: ColorConstant.black900,fontSize: 16,),
                          children:  <Widget>[
                            Column(
                              children: [
                                CustomTextField(
                                  fieldText: "Full Name".tr,
                                  controller: controller.serventfullNameController,
                                  isFinal: false,
                                  keyboardType: TextInputType.emailAddress,
                                  limit: HelperFunction.EMAIL_VALIDATION,
                                  validator: (value) {
                                    return HelperFunction.empthyFieldValidator(value!);
                                  },
                                ),
                                SizedBox(height: getVerticalSize(5),),
                                CustomTextField(
                                  fieldText: "Father’s Name".tr,
                                  controller: controller.serventfathersController,
                                  isFinal: false,
                                  keyboardType: TextInputType.emailAddress,
                                  limit: HelperFunction.EMAIL_VALIDATION,
                                  validator: (value) {
                                    return HelperFunction.empthyFieldValidator(value!);
                                  },
                                ),
                                SizedBox(height: getVerticalSize(5),),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      child: CustomTextField(
                                        fieldText: "CNIC No.".tr,
                                        controller: controller.serventcnicController,
                                        isFinal: false,
                                        keyboardType: TextInputType.emailAddress,
                                        limit: HelperFunction.EMAIL_VALIDATION,
                                        validator: (value) {
                                          return HelperFunction.empthyFieldValidator(value!);
                                        },
                                      ),
                                    ),
                                    Expanded(
                                      child: CustomTextField(
                                        fieldText: "Mobile number".tr,
                                        controller: controller.serventmobileController,
                                        isFinal: false,
                                        keyboardType: TextInputType.emailAddress,
                                        validator: (value) {
                                          return HelperFunction.empthyFieldValidator(value!);
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: getVerticalSize(15),),
                                Padding(
                                  padding: getPadding(left: 10),
                                  child: Align(
                                    alignment: Alignment.topLeft,
                                    child: MyText(title: "Permanent Address",),
                                  ),
                                ),
                                SizedBox(height: getVerticalSize(5),),
                                CustomTextField(
                                  fieldText: "House/Plot No.".tr,
                                  controller: controller.serventhouseController,
                                  isFinal: false,
                                  keyboardType: TextInputType.emailAddress,
                                  limit: HelperFunction.EMAIL_VALIDATION,
                                  validator: (value) {
                                    return HelperFunction.empthyFieldValidator(value!);
                                  },
                                ),
                                SizedBox(height: getVerticalSize(5),),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      child: CustomTextField(
                                        fieldText: "Road".tr,
                                        controller: controller.serventroadController,
                                        isFinal: false,
                                        keyboardType: TextInputType.emailAddress,
                                        limit: HelperFunction.EMAIL_VALIDATION,
                                        validator: (value) {
                                          return HelperFunction.empthyFieldValidator(value!);
                                        },
                                      ),
                                    ),
                                    Expanded(
                                      child: CustomTextField(
                                        fieldText: "Street".tr,
                                        controller: controller.serventstreetController,
                                        isFinal: false,
                                        keyboardType: TextInputType.emailAddress,
                                        validator: (value) {
                                          return HelperFunction.empthyFieldValidator(value!);
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: getVerticalSize(5),),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      child: CustomTextField(
                                        fieldText: "Block".tr,
                                        controller: controller.serventblockController,
                                        isFinal: false,
                                        keyboardType: TextInputType.emailAddress,
                                        limit: HelperFunction.EMAIL_VALIDATION,
                                        validator: (value) {
                                          return HelperFunction.empthyFieldValidator(value!);
                                        },
                                      ),
                                    ),
                                    Expanded(
                                      child: CustomTextField(
                                        fieldText: "Mohalla/Village".tr,
                                        controller: controller.serventcolonyVillageController,
                                        isFinal: false,
                                        keyboardType: TextInputType.emailAddress,
                                        validator: (value) {
                                          return HelperFunction.empthyFieldValidator(value!);
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: getVerticalSize(15),),
                                Padding(
                                  padding: getPadding(left: 10,right: 10),
                                  child: CustomButton(
                                    width: getHorizontalSize(350),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                    color: ColorConstant.whiteA700,
                                    label: "Attach a clear image of yours".tr,
                                    textColor: ColorConstant.anbtnBlue,
                                    borderColor: ColorConstant.anbtnBlue,
                                    prefix: Icon(Icons.add_circle_outline,color: ColorConstant.anbtnBlue,),
                                    onPressed: () {
                                    },
                                  ),
                                ),
                                SizedBox(height: getVerticalSize(15),),
                                Padding(
                                  padding: getPadding(left: 10,right: 10),
                                  child: CustomButton(
                                    width: getHorizontalSize(350),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                    color: ColorConstant.whiteA700,
                                    label: "Attach a clear image of your CNIC front side".tr,
                                    textColor: ColorConstant.anbtnBlue,
                                    borderColor: ColorConstant.anbtnBlue,
                                    prefix: Icon(Icons.add_circle_outline,color: ColorConstant.anbtnBlue,),
                                    onPressed: () {
                                    },
                                  ),
                                ),
                                SizedBox(height: getVerticalSize(15),),
                                Padding(
                                  padding: getPadding(left: 10,right: 10),
                                  child: CustomButton(
                                    width: getHorizontalSize(350),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                    color: ColorConstant.whiteA700,
                                    label: "Attach a clear image of your CNIC back side".tr,
                                    textColor: ColorConstant.anbtnBlue,
                                    borderColor: ColorConstant.anbtnBlue,
                                    prefix: Icon(Icons.add_circle_outline,color: ColorConstant.anbtnBlue,),
                                    onPressed: () {
                                    },
                                  ),
                                ),
                                SizedBox(height: getVerticalSize(15),),
                                Padding(
                                  padding: getPadding(left: 10,right: 10),
                                  child: MyAnimatedButton(
                                    radius: 5.0,
                                    height: getVerticalSize(50),
                                    width: getHorizontalSize(400),
                                    fontSize: 16 ,
                                    bgColor: ColorConstant.anbtnBlue,
                                    controller: controller.btnController,
                                    title: "Add Servant".tr,
                                    onTap: () async {
                                      // controller.loginAPI(context);
                                    },
                                  ),
                                ),
                                SizedBox(height: getVerticalSize(20),),
                              ],
                            )
                          ],
                        ),
                        SizedBox(height: getVerticalSize(10),),
                        CustomExpansionTile(
                          title: MyText(title:'Servants Family Details (if residing)',clr: ColorConstant.black900,fontSize: 16,),
                          children:  <Widget>[
                            Column(
                              children: [
                                CustomTextField(
                                  fieldText: "Full Name".tr,
                                  controller: controller.serventfamfullNameController,
                                  isFinal: false,
                                  keyboardType: TextInputType.emailAddress,
                                  limit: HelperFunction.EMAIL_VALIDATION,
                                  validator: (value) {
                                    return HelperFunction.empthyFieldValidator(value!);
                                  },
                                ),
                                SizedBox(height: getVerticalSize(5),),
                                CustomTextField(
                                  fieldText: "Occupation".tr,
                                  controller: controller.fathersController,
                                  isFinal: false,
                                  keyboardType: TextInputType.emailAddress,
                                  limit: HelperFunction.EMAIL_VALIDATION,
                                  validator: (value) {
                                    return HelperFunction.empthyFieldValidator(value!);
                                  },
                                ),
                                SizedBox(height: getVerticalSize(5),),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      child: CustomTextField(
                                        fieldText: "N.I.C / FORM ‘B’".tr,
                                        controller: controller.serventfamCnicController,
                                        isFinal: false,
                                        keyboardType: TextInputType.emailAddress,
                                        limit: HelperFunction.EMAIL_VALIDATION,
                                        validator: (value) {
                                          return HelperFunction.empthyFieldValidator(value!);
                                        },
                                      ),
                                    ),
                                    Expanded(
                                      child: CustomTextField(
                                        fieldText: "Mobile number’".tr,
                                        controller: controller.serventfamMobController,
                                        isFinal: false,
                                        keyboardType: TextInputType.emailAddress,
                                        validator: (value) {
                                          return HelperFunction.empthyFieldValidator(value!);
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: getVerticalSize(5),),
                                CustomTextField(
                                  fieldText: "Present Address".tr,
                                  controller: controller.serventpresentAddController,
                                  isFinal: false,
                                  keyboardType: TextInputType.emailAddress,
                                  limit: HelperFunction.EMAIL_VALIDATION,
                                  validator: (value) {
                                    return HelperFunction.empthyFieldValidator(value!);
                                  },
                                ),

                                SizedBox(height: getVerticalSize(15),),
                                Padding(
                                  padding: getPadding(left: 10,right: 10),
                                  child: CustomButton(
                                    width: getHorizontalSize(350),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                    color: ColorConstant.whiteA700,
                                    label: "Attach a clear image of servant".tr,
                                    textColor: ColorConstant.anbtnBlue,
                                    borderColor: ColorConstant.anbtnBlue,
                                    prefix: Icon(Icons.add_circle_outline,color: ColorConstant.anbtnBlue,),
                                    onPressed: () {
                                    },
                                  ),
                                ),

                                SizedBox(height: getVerticalSize(15),),
                                Padding(
                                  padding: getPadding(left: 10,right: 10),
                                  child: MyAnimatedButton(
                                    radius: 5.0,
                                    height: getVerticalSize(50),
                                    width: getHorizontalSize(400),
                                    fontSize: 16 ,
                                    bgColor: ColorConstant.anbtnBlue,
                                    controller: controller.btnController,
                                    title: "Add Family Member".tr,
                                    onTap: () async {
                                      // controller.loginAPI(context);
                                    },
                                  ),
                                ),
                                SizedBox(height: getVerticalSize(20),),
                              ],
                            )
                          ],
                        ),
                        SizedBox(height: getVerticalSize(10),),
                        CustomExpansionTile(
                          title: MyText(title:'Add Signature',clr: ColorConstant.black900,fontSize: 16,),
                          children:  <Widget>[
                            Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      child: CustomTextField(
                                        fieldText: "SIGNATURE OF OWNER:".tr,
                                        controller: controller.serventSignatureController,
                                        isFinal: false,
                                        keyboardType: TextInputType.emailAddress,
                                        limit: HelperFunction.EMAIL_VALIDATION,
                                        validator: (value) {
                                          return HelperFunction.empthyFieldValidator(value!);
                                        },
                                      ),
                                    ),
                                    Expanded(
                                      child: CustomTextField(
                                        fieldText: "mm/dd/yyyy".tr,
                                        controller: controller.serventdateController,
                                        isFinal: false,
                                        keyboardType: TextInputType.emailAddress,
                                        validator: (value) {
                                          return HelperFunction.empthyFieldValidator(value!);
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: getVerticalSize(5),),
                                SizedBox(height: getVerticalSize(15),),
                                Padding(
                                  padding: getPadding(left: 10,right: 10),
                                  child: MyAnimatedButton(
                                    radius: 5.0,
                                    height: getVerticalSize(50),
                                    width: getHorizontalSize(400),
                                    fontSize: 16 ,
                                    bgColor: ColorConstant.anbtnBlue,
                                    controller: controller.btnController,
                                    title: "Submit".tr,
                                    onTap: () async {
                                      // controller.loginAPI(context);
                                    },
                                  ),
                                ),
                                SizedBox(height: getVerticalSize(20),),
                              ],
                            )
                          ],
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
