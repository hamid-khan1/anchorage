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
import 'controller/tenantforms_controller.dart';

class TenantFornsScreen extends StatelessWidget {
  TenantFornsScreenController controller = Get.put(TenantFornsScreenController());
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
                title: MyText(title: "Tenant Form",clr: ColorConstant.whiteA700,fontSize: 20,customWeight: FontWeight.w500,),
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
                          title: MyText(title:'PARTICULARS OF TENANT',clr: ColorConstant.black900,fontSize: 16,),
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
                                SizedBox(height: getVerticalSize(5),),
                                CustomTextField(
                                  fieldText: "Telephone No.".tr,
                                  controller: controller.telephoneController,
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
                                        fieldText: "Nationality".tr,
                                        controller: controller.natinalityController,
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
                                        fieldText: "Block/COMM".tr,
                                        controller: controller.blockController,
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
                                        fieldText: "Street/Road.".tr,
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
                                        fieldText: "House No.".tr,
                                        controller: controller.houseController,
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
                                        fieldText: "Occupationt".tr,
                                        controller: controller.occupationController,
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
                                  fieldText: "Present Address.".tr,
                                  controller: controller.presentAddController,
                                  isFinal: false,
                                  keyboardType: TextInputType.emailAddress,
                                  limit: HelperFunction.EMAIL_VALIDATION,
                                  validator: (value) {
                                    return HelperFunction.empthyFieldValidator(value!);
                                  },
                                ),
                                SizedBox(height: getVerticalSize(5),),
                                CustomTextField(
                                  fieldText: "Size of House/ Plot".tr,
                                  controller: controller.sizeHouseAddController,
                                  isFinal: false,
                                  keyboardType: TextInputType.emailAddress,
                                  limit: HelperFunction.EMAIL_VALIDATION,
                                  validator: (value) {
                                    return HelperFunction.empthyFieldValidator(value!);
                                  },
                                ),
                                SizedBox(height: getVerticalSize(5),),

                                SizedBox(height: getVerticalSize(5),),
                                SizedBox(height: getVerticalSize(15),),

                              ],
                            )
                          ],
                        ),
                        SizedBox(height: getVerticalSize(10),),
                        CustomExpansionTile(
                          title: MyText(title:'PRIVATE ARMS',clr: ColorConstant.black900,fontSize: 16,),
                          children:  <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding: getPadding(left: 10),
                                      child: MyText(title: "PRIVATE ARMS*:",clr: ColorConstant.antextlightgray,fontSize: 14,),
                                    ),
                                    SizedBox(width: getHorizontalSize(20),),
                                    Icon(Icons.circle_outlined,color: ColorConstant.blackColor,size: 14,),
                                    SizedBox(width: getHorizontalSize(10),),
                                    MyText(title: "Yes",clr: ColorConstant.antextlightgray,),
                                    SizedBox(width: getHorizontalSize(20),),

                                    Icon(Icons.circle_outlined,color: ColorConstant.blackColor,size: 14,),
                                    SizedBox(width: getHorizontalSize(10),),
                                    MyText(title: "No",clr: ColorConstant.antextlightgray,),

                                  ],
                                ),

                                SizedBox(height: getVerticalSize(5),),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      child: CustomTextField(
                                        fieldText: "License Number".tr,
                                        controller: controller.privateLicenseController,
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
                                        fieldText: "Arms Quantity".tr,
                                        controller: controller.privateArmsController,
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
                                        fieldText: "Ammunition Qantity ".tr,
                                        controller: controller.privateAmmunitionController,
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
                                        fieldText: "Bore/Typer".tr,
                                        controller: controller.privateBoreController,
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
                                SizedBox(height: getVerticalSize(20),),
                              ],
                            )
                          ],
                        ),
                        SizedBox(height: getVerticalSize(10),),
                        CustomExpansionTile(
                          title: MyText(title:'Vehicles Information',clr: ColorConstant.black900,fontSize: 16,),
                          children:  <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding: getPadding(left: 10),
                                      child: MyText(title: "VEHICLE(s) IN USE",clr: ColorConstant.antextlightgray,fontSize: 14,),
                                    ),
                                    SizedBox(width: getHorizontalSize(20),),
                                    Icon(Icons.circle_outlined,color: ColorConstant.blackColor,size: 14,),
                                    SizedBox(width: getHorizontalSize(10),),
                                    MyText(title: "Yes",clr: ColorConstant.antextlightgray,),
                                    SizedBox(width: getHorizontalSize(20),),

                                    Icon(Icons.circle_outlined,color: ColorConstant.blackColor,size: 14,),
                                    SizedBox(width: getHorizontalSize(10),),
                                    MyText(title: "No",clr: ColorConstant.antextlightgray,),

                                  ],
                                ),

                                SizedBox(height: getVerticalSize(5),),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      child: CustomTextField(
                                        fieldText: "Vehicle Type".tr,
                                        controller: controller.vehicleTypeController,
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
                                        fieldText: "Registration No.".tr,
                                        controller: controller.vehicleRegesterNoController,
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
                                        fieldText: "Color".tr,
                                        controller: controller.vehicleColorController,
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
                                        fieldText: "Sticker No.".tr,
                                        controller: controller.vehicleStikerController,
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
                                        fieldText: "Engine No".tr,
                                        controller: controller.vehicleEngineNoController,
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
                                        fieldText: "E-Tag".tr,
                                        controller: controller.vehicleEtagController,
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
                        Align(
                          alignment: Alignment.topLeft,
                            child: MyText(title: "Required Documents",fontSize: 22,)),
                        SizedBox(height: getVerticalSize(10),),
                        CustomExpansionTile(
                          title: MyText(title:'Required Documents',clr: ColorConstant.black900,fontSize: 16,),
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
                                    label: "CNIC OF OWNER (FRONT & BACK)*r".tr,
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
                                    label: "CNIC OF TENANT (FRONT & BACK)*".tr,
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
                                    label: "CNIC OF ESTATE AGENT (FRONT & BACK)".tr,
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
                                    label: "PHOTOGRAPH OF TENANT*".tr,
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
                                    label: "RENT AGREEMENT DULLY SIGNED*".tr,
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
                                    label: "POLICE REGISTRATION FROM *".tr,
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
                                    label: "COMPLETION CERTIFICATE (IF APPLICABLE)".tr,
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
                                    title: "Submit".tr,
                                    onTap: () async {
                                      // controller.loginAPI(context);
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
