import 'package:api_project/modules/post_feed/network/phone_data_network_calls.dart';
import 'package:get/get.dart';

import 'package:api_project/modules/post_feed/models/phone_data_model';

class PhoneDataController extends GetxController {
  PhoneDataModel? PhoneData;
  dynamic phoneData;
  onInit() {
    super.onInit();
    print('Controller init state called');
    makeTodoAPICall();
  }

  void makeTodoAPICall() {
    PhoneDataNetworkCalls.getPhoneData().then(
        (decoded) => {PhoneData = PhoneDataModel.fromJson(decoded), update()});
  }
}
