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
import '../../widgets/no_internet_found.dart';
import '../../widgets/paginations/paged_listview.dart';
import '../../widgets/widgets_shimmer.dart';
import 'controller/mycomplaints_controller.dart';

class MyComplaintsScreen extends StatelessWidget {
  MyComplaintsController controller = Get.put(MyComplaintsController());
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
                title: MyText(title: "My Complaints",clr: ColorConstant.whiteA700,fontSize: 20,customWeight: FontWeight.w500,),
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
                                MyText(title: "Description",fontSize: 12,),
                                MyText(title: "Status",fontSize: 12,),

                              ],
                            ),
                            Divider(color: ColorConstant.antextlightgray,),
                            ListView.builder(
                              shrinkWrap: true,
                              padding: getPadding(top: 5),
                              scrollDirection: Axis.vertical,
                              itemCount: 10, // Increase the itemCount by 1 to accommodate the "View All" item
                              itemBuilder: (BuildContext context, int index) {
                                return Column(
                                  children: [
                                    Padding(
                                      padding: getPadding(top: 10, bottom: 10),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          MyText(
                                            title: "Water Supply & Maintenance Department",
                                            clr: ColorConstant.antextGrayDark,
                                            fontSize: 12,
                                          ),
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
                                                  title: "Resolved",
                                                  fontSize: 9,
                                                  clr: ColorConstant.whiteA700,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                   // if (index != 14) // Add divider after all items except the last one
                                      const Divider(
                                        height: 1,
                                        color: Colors.grey, // Adjust color as needed
                                        thickness: 1,
                                      ),
                                  ],
                                );
                              },
                            ),

                            SizedBox(height: getVerticalSize(40),),
                            MyAnimatedButton(
                              radius: 5.0,
                              height: getVerticalSize(40),
                              width: getHorizontalSize(400),
                              fontSize: 16 ,
                              bgColor: ColorConstant.anbtnBlue,
                              controller: controller.btnController,
                              title: "Create New Complaint".tr,
                              onTap: () async {

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
