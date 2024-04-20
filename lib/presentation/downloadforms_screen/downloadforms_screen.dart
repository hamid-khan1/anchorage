import 'package:anchorageislamabad/core/utils/image_constant.dart';
import 'package:anchorageislamabad/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../baseviews/baseview_process_screen.dart';
import '../../core/model_classes/deal_model.dart';
import '../../core/utils/color_constant.dart';
import '../../core/utils/size_utils.dart';
import '../../routes/app_routes.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/common_image_view.dart';
import '../../widgets/custom_expensiontile.dart';
import '../../widgets/no_internet_found.dart';
import '../../widgets/paginations/paged_listview.dart';
import '../../widgets/widgets_shimmer.dart';
import 'controller/downloadforms_controller.dart';

class DownloadFormsScreen extends StatelessWidget {
  DownloadFormsController controller = Get.put(DownloadFormsController());
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
          padding: getPadding(left: 10,right: 10),
          child: Column(
            children: [
              CustomAppBar(
                title: MyText(title: "Download Forms",clr: ColorConstant.whiteA700,fontSize: 20,customWeight: FontWeight.w500,),
                centerTitle: true,
                leading: Icon(Icons.arrow_back_ios),
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
                        SingleChildScrollView(
                          child: CustomExpansionTile(
                            leading: Icon(Icons.add, color: ColorConstant.whiteA700),
                            title: MyText(title: 'Administration Department', clr: ColorConstant.black900, fontSize: 14),
                            children: <Widget>[
                              Padding(
                                padding: getPadding(left: 15, right: 0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded( // Wrap the Column with Expanded
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            width: getHorizontalSize(300),
                                            child: ListView.builder(
                                              shrinkWrap: true,
                                              padding: EdgeInsets.zero,
                                              scrollDirection: Axis.vertical,
                                              itemCount: 15,
                                              itemBuilder: (BuildContext context, int index) {
                                                return Column(
                                                  children: [
                                                    Container(
                                                      padding: getPadding(all: 10),
                                                      decoration: BoxDecoration(
                                                        border: Border.all(color: ColorConstant.anbtnBlue),
                                                        borderRadius: BorderRadius.circular(5),
                                                      ),
                                                      child: Padding(
                                                        padding: getPadding(left: 5, right: 5, top: 0, bottom: 0),
                                                        child: Row(
                                                          children: [
                                                            CommonImageView(
                                                              imagePath: ImageConstant.downloadIcon,
                                                            ),
                                                            SizedBox(width: 10),
                                                            Expanded(
                                                              child: MyText(
                                                                title: "CONTRACTOR INSTRUCTIONS ON STAM",
                                                                fontSize: 11,
                                                                clr: ColorConstant.gray600,
                                                                line: 2,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                    Divider(),
                                                  ],
                                                );
                                              },
                                            ),
                                          ),
                                          SizedBox(height: getVerticalSize(10)),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: getVerticalSize(10),),
                        CustomExpansionTile(
                          leading: Icon(Icons.add,color: ColorConstant.whiteA700,),
                          title: MyText(title: 'Building Control Department',clr: ColorConstant.black900,fontSize: 14,),
                          children: <Widget>[
                            Padding(
                              padding: getPadding(left: 10, right: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start, // Adjusted alignment
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: getHorizontalSize(300), // Set the width explicitly
                                        child: ListView.builder(
                                          shrinkWrap: true,
                                          padding: EdgeInsets.zero,
                                          scrollDirection: Axis.vertical,
                                          itemCount: 10, // Increase the itemCount by 1 to accommodate the "View All" item
                                          itemBuilder: (BuildContext context, int index) {
                                            return Column(
                                              children: [
                                                Container(
                                                  padding: getPadding(all: 10),
                                                  decoration: BoxDecoration(
                                                    border: Border.all(color: ColorConstant.anbtnBlue),
                                                    borderRadius: BorderRadius.circular(5),
                                                  ),
                                                  child: Padding(
                                                    padding: getPadding(left: 5, right: 5, top: 0, bottom: 0),
                                                    child: Row(
                                                      children: [
                                                        CommonImageView(
                                                          imagePath: ImageConstant.downloadIcon,
                                                        ),
                                                        SizedBox(width: 10), // Add some space between the image and text
                                                        Expanded(
                                                          child: MyText(
                                                            title: "REQUIREMENT OF CONTRACTOR REGISTRATION FORM",
                                                            fontSize: 11,
                                                            clr: ColorConstant.gray600,
                                                            line: 2,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                Divider(), // Add a Divider between items
                                              ],
                                            );
                                          },
                                        ),
                                      ),
                                      SizedBox(height: getVerticalSize(10)),
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: getVerticalSize(10),),
                        CustomExpansionTile(
                          leading: Icon(Icons.add,color: ColorConstant.whiteA700,),
                          title: MyText(title: 'Record Office',clr: ColorConstant.black900,fontSize: 14,),
                          children: <Widget>[
                            Padding(
                              padding: getPadding(left: 10, right: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start, // Adjusted alignment
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: getHorizontalSize(300), // Set the width explicitly
                                        child: ListView.builder(
                                          shrinkWrap: true,
                                          padding: EdgeInsets.zero,
                                          scrollDirection: Axis.vertical,
                                          itemCount: 10, // Increase the itemCount by 1 to accommodate the "View All" item
                                          itemBuilder: (BuildContext context, int index) {
                                            return Column(
                                              children: [
                                                Container(
                                                  padding: getPadding(all: 10),
                                                  decoration: BoxDecoration(
                                                    border: Border.all(color: ColorConstant.anbtnBlue),
                                                    borderRadius: BorderRadius.circular(5),
                                                  ),
                                                  child: Padding(
                                                    padding: getPadding(left: 5, right: 5, top: 0, bottom: 0),
                                                    child: Row(
                                                      children: [
                                                        CommonImageView(
                                                          imagePath: ImageConstant.downloadIcon,
                                                        ),
                                                        SizedBox(width: 10), // Add some space between the image and text
                                                        Expanded(
                                                          child: MyText(
                                                            title: "CONTRACTOR INSTRUCTIONS ON STAM",
                                                            fontSize: 11,
                                                            clr: ColorConstant.gray600,
                                                            line: 2,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                Divider(), // Add a Divider between items
                                              ],
                                            );
                                          },
                                        ),
                                      ),
                                      SizedBox(height: getVerticalSize(10)),
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: getVerticalSize(10),),
                        CustomExpansionTile(
                          leading: Icon(Icons.add,color: ColorConstant.whiteA700,),
                          title: MyText(title: 'Property Exchange Centre',clr: ColorConstant.black900,fontSize: 14,),
                          children: <Widget>[
                            Padding(
                              padding: getPadding(left: 10, right: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start, // Adjusted alignment
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: getHorizontalSize(300), // Set the width explicitly
                                        child: ListView.builder(
                                          shrinkWrap: true,
                                          padding: EdgeInsets.zero,
                                          scrollDirection: Axis.vertical,
                                          itemCount: 10, // Increase the itemCount by 1 to accommodate the "View All" item
                                          itemBuilder: (BuildContext context, int index) {
                                            return Column(
                                              children: [
                                                Container(
                                                  padding: getPadding(all: 10),
                                                  decoration: BoxDecoration(
                                                    border: Border.all(color: ColorConstant.anbtnBlue),
                                                    borderRadius: BorderRadius.circular(5),
                                                  ),
                                                  child: Padding(
                                                    padding: getPadding(left: 5, right: 5, top: 0, bottom: 0),
                                                    child: Row(
                                                      children: [
                                                        CommonImageView(
                                                          imagePath: ImageConstant.downloadIcon,
                                                        ),
                                                        SizedBox(width: 10), // Add some space between the image and text
                                                        Expanded(
                                                          child: MyText(
                                                            title: "OBTANING OF APPROVAL OF BUILDING PLAN",
                                                            fontSize: 11,
                                                            clr: ColorConstant.gray600,
                                                            line: 2,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                Divider(), // Add a Divider between items
                                              ],
                                            );
                                          },
                                        ),
                                      ),
                                      SizedBox(height: getVerticalSize(10)),
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: getVerticalSize(10),),
                        CustomExpansionTile(
                          leading: Icon(Icons.add,color: ColorConstant.whiteA700,),
                          title: MyText(title: 'Anchorage Medical Centre',clr: ColorConstant.black900,fontSize: 14,),
                          children: <Widget>[
                            Padding(
                              padding: getPadding(left: 10, right: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start, // Adjusted alignment
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: getHorizontalSize(300), // Set the width explicitly
                                        child: ListView.builder(
                                          shrinkWrap: true,
                                          padding: EdgeInsets.zero,
                                          scrollDirection: Axis.vertical,
                                          itemCount: 10, // Increase the itemCount by 1 to accommodate the "View All" item
                                          itemBuilder: (BuildContext context, int index) {
                                            return Column(
                                              children: [
                                                Container(
                                                  padding: getPadding(all: 10),
                                                  decoration: BoxDecoration(
                                                    border: Border.all(color: ColorConstant.anbtnBlue),
                                                    borderRadius: BorderRadius.circular(5),
                                                  ),
                                                  child: Padding(
                                                    padding: getPadding(left: 5, right: 5, top: 0, bottom: 0),
                                                    child: Row(
                                                      children: [
                                                        CommonImageView(
                                                          imagePath: ImageConstant.downloadIcon,
                                                        ),
                                                        SizedBox(width: 10), // Add some space between the image and text
                                                        Expanded(
                                                          child: MyText(
                                                            title: "INDEMNITY BOND BY OWNER OF PLOT FAVOR OF ANCHORAGE, ISLAMABAD",
                                                            fontSize: 11,
                                                            clr: ColorConstant.gray600,
                                                            line: 2,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                Divider(), // Add a Divider between items
                                              ],
                                            );
                                          },
                                        ),
                                      ),
                                      SizedBox(height: getVerticalSize(10)),
                                    ],
                                  )
                                ],
                              ),
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
