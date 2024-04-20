import 'package:anchorageislamabad/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../baseviews/baseview_process_screen.dart';
import '../../core/model_classes/deal_model.dart';
import '../../core/utils/color_constant.dart';
import '../../core/utils/image_constant.dart';
import '../../core/utils/size_utils.dart';
import '../../routes/app_routes.dart';
import '../../widgets/animated_custom_button.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/common_image_view.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/no_internet_found.dart';
import '../../widgets/outline_animated_custom_button.dart';
import '../../widgets/paginations/paged_listview.dart';
import '../../widgets/widgets_shimmer.dart';
import 'controller/properties_controller.dart';

class PropertiesScreen extends StatelessWidget {
  PropertiesController controller = Get.put(PropertiesController());
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
        body: Column(

          children: [
            Padding(
              padding: getPadding(left: 10),
              child: CustomAppBar(
                title: MyText(title: "My Properties",clr: ColorConstant.whiteA700,fontSize: 20,customWeight: FontWeight.w500,),
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
                      MyText(title: "Monday Mon-03-2024 10:12 PM",clr: ColorConstant.apppWhite,fontSize: 12,),
                      SizedBox(height: getVerticalSize(10),),
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
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                MyText(title: "Property Type",fontSize: 12,customWeight: FontWeight.w500,),
                                MyText(title: "Plot No",fontSize: 12,customWeight: FontWeight.w500,),
                                MyText(title: "Blockt",fontSize: 12,customWeight: FontWeight.w500,),
                                MyText(title: "Status",fontSize: 12,customWeight: FontWeight.w500,),
                              ],
                            ),
                            Divider(color: ColorConstant.antextlightgray,),
                            ListView.builder(
                              shrinkWrap: true,
                              padding: getPadding(top: 5),
                              scrollDirection: Axis.vertical,
                              itemCount: 6, // Increase the itemCount by 1 to accommodate the "View All" item
                              itemBuilder: (BuildContext context, int index) {
                                return Padding(
                                  padding: getPadding(top: 5,bottom: 5),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      MyText(title: "Residential Plot",clr: ColorConstant.antextGrayDark,fontSize: 13,),
                                      MyText(title: "N/A",clr: ColorConstant.antextGrayDark,fontSize: 12,),
                                      MyText(title: "A",clr: ColorConstant.antextGrayDark,fontSize: 12,),
                                      Row(
                                        children: [
                                          Container(
                                            padding: getPadding(left: 10, right: 10),
                                            height: getVerticalSize(20),
                                            decoration: BoxDecoration(
                                              color: ColorConstant.appgreenColor,
                                              borderRadius: BorderRadius.circular(5),
                                            ),
                                            alignment: Alignment.center,
                                            child: MyText(
                                              title: "Active",
                                              fontSize: 9,
                                              clr: ColorConstant.whiteA700,
                                            ),
                                          ),
                                        ],
                                      )

                                    ],

                                  ),
                                );

                              },
                            ),

                            SizedBox(height: getVerticalSize(10),),
                            CustomButton(
                              width: getHorizontalSize(350),
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              color: ColorConstant.whiteA700,
                              label: "Add New Property".tr,
                              textColor: ColorConstant.anbtnBlue,
                              borderColor: ColorConstant.anbtnBlue,
                              // prefix: Icon(Icons.abc_rounded,color: ColorConstant.blackColor,),
                              onPressed: () {
                              },
                            ),

                          ],
                        ),
                      ),



                      SizedBox(height: getVerticalSize(16),),





                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}
