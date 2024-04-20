import 'dart:async';
import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';

import '../../../Shared_prefrences/app_prefrences.dart';
import '../../../core/model_classes/deal_model.dart';
import '../../../core/model_classes/login_model.dart';
import '../../../core/model_classes/page_model.dart';
import '../../../core/utils/constants.dart';
import '../../../core/utils/utils.dart';
import '../../../data/services/api_call_status.dart';
import '../../../data/services/api_exceptions.dart';
import '../../../data/services/base_client.dart';
import '../../../widgets/paginations/paged_view.dart';

/// A controller class for the DiscoverScreen.
///
/// This class manages the state of the DiscoverScreen, including the
/// current discoverModelObj
///
class ServentFormsController extends GetxController {
 // Rx<DiscoverModel> discoverModelObj = DiscoverModel().obs;
  final RoundedLoadingButtonController btnController = RoundedLoadingButtonController();
  TextEditingController fullNameController = TextEditingController();
  TextEditingController fathersController = TextEditingController();
  TextEditingController telephoneController = TextEditingController();
  TextEditingController natinalityController = TextEditingController();
  TextEditingController occupationController = TextEditingController();
  TextEditingController presentAddController = TextEditingController();
  TextEditingController permanantAddController = TextEditingController();
  TextEditingController allotmentAddController = TextEditingController();
  TextEditingController completionAddController = TextEditingController();
  TextEditingController sizeHouseAddController = TextEditingController();
  TextEditingController custructionStatusAddController = TextEditingController();
  TextEditingController cnicController = TextEditingController();
  TextEditingController rankController = TextEditingController();
  TextEditingController servisController = TextEditingController();
  TextEditingController officeController = TextEditingController();
  TextEditingController mobileController = TextEditingController();
  TextEditingController houseController = TextEditingController();
  TextEditingController roadController = TextEditingController();
  TextEditingController streetController = TextEditingController();
  TextEditingController blockController = TextEditingController();
  TextEditingController colonyController = TextEditingController();
  TextEditingController cellNoController = TextEditingController();
  TextEditingController ptclController = TextEditingController();
  //servent controller
  TextEditingController serventfullNameController = TextEditingController();
  TextEditingController serventfathersController = TextEditingController();

  TextEditingController serventcnicController = TextEditingController();
  TextEditingController serventmobileController = TextEditingController();
  TextEditingController serventhouseController = TextEditingController();
  TextEditingController serventroadController = TextEditingController();
  TextEditingController serventstreetController = TextEditingController();
  TextEditingController serventblockController = TextEditingController();
  TextEditingController serventcolonyVillageController = TextEditingController();
  TextEditingController serventfamfullNameController = TextEditingController();
  TextEditingController serventoccutionController = TextEditingController();
  TextEditingController serventfamCnicController = TextEditingController();
  TextEditingController serventfamMobController = TextEditingController();
  TextEditingController serventpresentAddController = TextEditingController();
  TextEditingController serventSignatureController = TextEditingController();
  TextEditingController serventdateController = TextEditingController();


  //private arms controller
  TextEditingController privateLicenseController = TextEditingController();
  TextEditingController privateArmsController = TextEditingController();
  TextEditingController privateAmmunitionController = TextEditingController();
  TextEditingController privateBoreController = TextEditingController();
  //vichicles controller
  TextEditingController vehicleTypeController = TextEditingController();
  TextEditingController vehicleRegesterNoController = TextEditingController();
  TextEditingController vehicleColorController = TextEditingController();
  TextEditingController vehicleStikerController = TextEditingController();
  TextEditingController vehicleEngineNoController = TextEditingController();
  TextEditingController vehicleEtagController = TextEditingController();
  RxBool isInternetAvailable = true.obs;
  Rx<ApiCallStatus> apiCallStatus = ApiCallStatus.success.obs;
  AppPreferences _appPreferences = AppPreferences();
  AppPreferences appPreferences = AppPreferences();
  final GlobalKey <PagedViewState> pageKey = GlobalKey();
  RxList<DealsModel> categories = <DealsModel>[].obs;

  LoginModel? userDetails;

  Future<dynamic> getProfileData() async {
    await appPreferences.isPreferenceReady;
    var data= await appPreferences.getProfileData();
    Map<String,dynamic> userMap = jsonDecode(data!);
    print('map $userMap');
    userDetails = LoginModel.fromJson(userMap);
  }

  void loadApis(){

    getProfileData();
   // getDealsCategoriesApi();
  }



  Future<PageModel<DealsModel>?> getDealsCategoriesApi(int page) async {
    PageModel<DealsModel>? dealCategory;
    Completer<PageModel<DealsModel>?> completer=Completer();
    Utils.check().then((value) async {
      if (value) {
        isInternetAvailable.value = true;

        apiCallStatus.value = ApiCallStatus.loading;

        await _appPreferences.isPreferenceReady;
        _appPreferences.getAccessToken(
            prefName: AppPreferences.prefAccessToken).then((token) async {
          print(token);

          await BaseClient.get(
              Constants.dealsUrl,
              onSuccess: (response) {
                print(response);

                Iterable list = response.data['data'];
                dealCategory = PageModel(data:list.map((model) =>
                    DealsModel.fromJson(model)).toList(),total_page: 1,
                    current_page: page);
                print("deal categories is: $dealCategory");
                completer.complete(dealCategory);

                //print('[ categories RESPONSE ===> ${categories.toJson()}]');

                //   apiCallStatus.value = ApiCallStatus.success;

                return true;
              },
              onError: (error) {
                ApiException apiException = error;

                print(apiException.message);

                BaseClient.handleApiError(error);

                apiCallStatus.value = ApiCallStatus.error;

                return false;
              },
              headers: {
                'Authorization': 'Bearer $token'
              },
              queryParameters: null

          );
        });
      } else {
        isInternetAvailable.value = false;

        // CustomSnackBar.showCustomErrorToast(
        //     message: Strings.noInternetConnection.tr);
      }
    });

    return completer.future;
  }

  @override
  void onInit() {
    super.onInit();
    getProfileData();


  }


}
