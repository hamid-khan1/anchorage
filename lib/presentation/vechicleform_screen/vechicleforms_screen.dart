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
import '../../widgets/paginations/paged_listview.dart';
import '../../widgets/widgets_shimmer.dart';
import 'controller/vechicleforms_controller.dart';

class VechicleScreen extends StatelessWidget {
  VechicleController controller = Get.put(VechicleController());
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
                title: MyText(title: "Vehicle Entry",clr: ColorConstant.whiteA700,fontSize: 20,customWeight: FontWeight.w500,),
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
                          title: MyText(title:'STICKER PROFORMA',clr: ColorConstant.black900,fontSize: 16,),
                          children:  <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
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
                                SizedBox(height: getVerticalSize(10),),
                                Padding(
                                  padding: getPadding(left: 10,top: 10,right: 10),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Icon(Icons.circle_outlined,color: ColorConstant.blackColor,size: 14,),
                                      MyText(title: " Civilian",clr: ColorConstant.antextlightgray,),

                                      Icon(Icons.circle_outlined,color: ColorConstant.blackColor,size: 14,),
                                      MyText(title: " Service Personnel",clr: ColorConstant.antextlightgray,),

                                      Icon(Icons.circle_outlined,color: ColorConstant.blackColor,size: 14,),
                                      MyText(title: " mm/dd/yy",clr: ColorConstant.antextlightgray,),
                                    ],
                                  ),
                                ),
                                SizedBox(height: getVerticalSize(10),),
                                Padding(
                                  padding: getPadding(left: 10,right: 10),
                                  child: Divider(color: ColorConstant.antextlightgray,),
                                ),
                                SizedBox(height: getVerticalSize(5),),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      child: CustomTextField(
                                        fieldText: "Rank/Rate".tr,
                                        controller: controller.rankController,
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
                                        fieldText: "Service No".tr,
                                        controller: controller.servisController,
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
                                        fieldText: "CNIC / Passport No.".tr,
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
                                        fieldText: "Office / Department".tr,
                                        controller: controller.officeController,
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
                                SizedBox(height: getVerticalSize(5),),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      child: CustomTextField(
                                        fieldText: "Cell No.".tr,
                                        controller: controller.cellNoController,
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
                                        fieldText: "PTCL No.".tr,
                                        controller: controller.ptclController,
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
                                  child: MyText(title: "Select Residential Status:",fontSize: 20,),
                                ),
                                SizedBox(height: getVerticalSize(15),),
                                Padding(
                                  padding: getPadding(left: 10,top: 10,right: 10),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Icon(Icons.circle_outlined,color: ColorConstant.blackColor,size: 14,),
                                      MyText(title: " Civilian",clr: ColorConstant.antextlightgray,),

                                      Icon(Icons.circle_outlined,color: ColorConstant.blackColor,size: 14,),
                                      MyText(title: "Tenant",clr: ColorConstant.antextlightgray,),

                                      Icon(Icons.circle_outlined,color: ColorConstant.blackColor,size: 14,),
                                      MyText(title: "Visitor / Non-Resident",clr: ColorConstant.antextlightgray,),
                                    ],
                                  ),
                                ),
                                SizedBox(height: getVerticalSize(15),),
                                Padding(
                                  padding: getPadding(left: 10),
                                  child: MyText(title: "Vehicles Information",fontSize: 20,),
                                ),
                                SizedBox(height: getVerticalSize(15),),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      child: CustomTextField(
                                        fieldText: "Vehicle No.".tr,
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
                                        fieldText: "Make".tr,
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
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      child: CustomTextField(
                                        fieldText: "Model".tr,
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
                                        fieldText: "Color".tr,
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
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      child: CustomTextField(
                                        fieldText: "Engine No".tr,
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
                                        fieldText: "Chassis No".tr,
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
                                // Padding(
                                //   padding: getPadding(left: 10,right: 10),
                                //   child: CustomButton(
                                //     width: getHorizontalSize(350),
                                //     fontSize: 12,
                                //     fontWeight: FontWeight.w700,
                                //     color: ColorConstant.whiteA700,
                                //     label: "Attach a clear image of yours".tr,
                                //     textColor: ColorConstant.anbtnBlue,
                                //     borderColor: ColorConstant.anbtnBlue,
                                //     prefix: Icon(Icons.add_circle_outline,color: ColorConstant.anbtnBlue,),
                                //     onPressed: () {
                                //     },
                                //   ),
                                // ),
                                // SizedBox(height: getVerticalSize(15),),
                                // Padding(
                                //   padding: getPadding(left: 10,right: 10),
                                //   child: CustomButton(
                                //     width: getHorizontalSize(350),
                                //     fontSize: 12,
                                //     fontWeight: FontWeight.w700,
                                //     color: ColorConstant.whiteA700,
                                //     label: "Attach a clear image of your CNIC front side".tr,
                                //     textColor: ColorConstant.anbtnBlue,
                                //     borderColor: ColorConstant.anbtnBlue,
                                //     prefix: Icon(Icons.add_circle_outline,color: ColorConstant.anbtnBlue,),
                                //     onPressed: () {
                                //     },
                                //   ),
                                // ),
                                // SizedBox(height: getVerticalSize(15),),
                                // Padding(
                                //   padding: getPadding(left: 10,right: 10),
                                //   child: CustomButton(
                                //     width: getHorizontalSize(350),
                                //     fontSize: 12,
                                //     fontWeight: FontWeight.w700,
                                //     color: ColorConstant.whiteA700,
                                //
                                //     label: "Attach a clear image of your CNIC back side".tr,
                                //     textColor: ColorConstant.anbtnBlue,
                                //     borderColor: ColorConstant.anbtnBlue,
                                //     prefix: Icon(Icons.add_circle_outline,color: ColorConstant.anbtnBlue,),
                                //     onPressed: () {
                                //     },
                                //   ),
                                // ),
                                // SizedBox(height: getVerticalSize(15),),
                                Padding(
                                  padding: getPadding(left: 10,right: 10),
                                  child: MyAnimatedButton(
                                    radius: 5.0,
                                    height: getVerticalSize(50),
                                    width: getHorizontalSize(400),
                                    fontSize: 16 ,
                                    bgColor: ColorConstant.anbtnBlue,
                                    controller: controller.btnController,
                                    title: "Add Vehicle".tr,
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
                          title: MyText(title:'Users Information',clr: ColorConstant.black900,fontSize: 16,),
                          children:  <Widget>[
                            Column(
                              children: [
                                CustomTextField(
                                  fieldText: "Full Name".tr,
                                  controller: controller.userfullNameController,
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
                                        controller: controller.userCnicController,
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
                                        controller: controller.userMobileController,
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
                                  child: CustomButton(
                                    width: getHorizontalSize(350),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                    color: ColorConstant.whiteA700,
                                    label: "Attach Driving License Front Side Image".tr,
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
                                    label: "Attach Driving License Back Side Image".tr,
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
                                    title: "Add User".tr,
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
                          title: MyText(title:'View Undertaking ',clr: ColorConstant.black900,fontSize: 16,),
                          children:  <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: getPadding(left: 10),
                                  child: MyText(title: "Requirements:",clr: ColorConstant.antextlightgray,fontSize: 15,),
                                ),
                                SizedBox(height: getVerticalSize(15),),
                                Padding(
                                  padding: getPadding(left: 10,right: 10),
                                  child: CustomButton(
                                    width: getHorizontalSize(350),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                    color: ColorConstant.whiteA700,
                                    label: "Attach Driving License Front Side Image".tr,
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
                                    label: "Attach Driving License Back Side Image".tr,
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
                                    label: "Attach Vehicle Registration Imagee".tr,
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
                                  child: CustomButton(
                                    width: getHorizontalSize(350),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                    color: ColorConstant.whiteA700,
                                    label: "Attach Owner Image".tr,
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
                                    label: "Attach Allotment Letter Image".tr,
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
                                    label: "Attach Maintenance Bill Image".tr,
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
                                    label: "Attach Old Sticker Imagee".tr,
                                    textColor: ColorConstant.anbtnBlue,
                                    borderColor: ColorConstant.anbtnBlue,
                                    prefix: Icon(Icons.add_circle_outline,color: ColorConstant.anbtnBlue,),
                                    onPressed: () {
                                    },
                                  ),
                                ),
                                SizedBox(height: getVerticalSize(15),),
                                SizedBox(height: getVerticalSize(20),),
                              ],
                            )
                          ],
                        ),
                        SizedBox(height: getVerticalSize(30),),
                        MyAnimatedButton(
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
