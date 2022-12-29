import 'package:api_project/modules/post_feed/network/employee_data_network_calls.dart';
import 'package:get/get.dart';

import '../models/employee_data_model.dart';

class EmployeeDataController extends GetxController {
  EmployeeDataModel? employeeData;

  void makeTodoAPICall() {
    EmployeeDataNetworkCalls.getEmployeeData().then((decoded) =>
        {employeeData = EmployeeDataModel.fromJson(decoded), update()});
  }

  @override
  onInit() {
    super.onInit();
    print('Controller init state called');
    makeTodoAPICall();
  }
}
