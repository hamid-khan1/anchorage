import 'package:anchorageislamabad/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../baseviews/baseview_process_screen.dart';
import '../../core/model_classes/deal_model.dart';
import '../../core/utils/color_constant.dart';
import '../../core/utils/image_constant.dart';
import '../../core/utils/size_utils.dart';
import '../../widgets/animated_custom_button.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/common_image_view.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/no_internet_found.dart';
import '../../widgets/paginations/paged_listview.dart';
import '../../widgets/widgets_shimmer.dart';
import 'controller/menu_controller.dart';

class MenuScreen extends StatelessWidget {
 // MenuController controller = Get.put(MenuController());
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
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: getPadding(left: 10),
              child: CustomAppBar(
                title: MyText(title: "My Bills",clr: ColorConstant.whiteA700,fontSize: 20,customWeight: FontWeight.w500,),
                centerTitle: true,
                leading: Icon(Icons.arrow_back_ios),
                trailing: IconButton(
                  icon: const Icon(Icons.menu),
                  onPressed: () {

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
                      Container(
                        padding: getPadding(all: 20),
                        decoration: BoxDecoration(
                          color: ColorConstant.apppWhite,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        width: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            MyText(title: "My Profile",clr: ColorConstant.antextlightgray,fontSize: 18,),
                            SizedBox(height: getVerticalSize(20),),
                            Divider(color: ColorConstant.antextlightgray,),
                            SizedBox(height: getVerticalSize(20),),
                            MyText(title: "My Complaints",clr: ColorConstant.antextlightgray,fontSize: 18,),
                            SizedBox(height: getVerticalSize(20),),
                            Divider(color: ColorConstant.antextlightgray,),
                            SizedBox(height: getVerticalSize(20),),
                            MyText(title: "Bill Details",clr: ColorConstant.antextlightgray,fontSize: 18,),
                            SizedBox(height: getVerticalSize(20),),
                            Divider(color: ColorConstant.antextlightgray,),
                            SizedBox(height: getVerticalSize(20),),
                            MyText(title: "My Properties",clr: ColorConstant.antextlightgray,fontSize: 18,),
                            SizedBox(height: getVerticalSize(20),),
                            Divider(color: ColorConstant.antextlightgray,),
                            SizedBox(height: getVerticalSize(20),),
                            MyText(title: "Online Forms",clr: ColorConstant.antextlightgray,fontSize: 18,),
                            SizedBox(height: getVerticalSize(20),),
                            Divider(color: ColorConstant.antextlightgray,),
                            SizedBox(height: getVerticalSize(20),),
                            MyText(title: "Download Forms",clr: ColorConstant.antextlightgray,fontSize: 18,),
                            SizedBox(height: getVerticalSize(20),),
                            Divider(color: ColorConstant.antextlightgray,),
                            SizedBox(height: getVerticalSize(20),),
                            MyText(title: "Logut",clr: ColorConstant.antextlightgray,fontSize: 18,),
                            SizedBox(height: getVerticalSize(20),),
                            Divider(color: ColorConstant.antextlightgray,),
                            SizedBox(height: getVerticalSize(20),),
                            MyText(title: "Delete",clr: Colors.red,fontSize: 18,),
                            SizedBox(height: getVerticalSize(20),),
                            Divider(color: ColorConstant.antextlightgray,),
                            SizedBox(height: getVerticalSize(20),),
                          ],
                        ),
                      )





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
