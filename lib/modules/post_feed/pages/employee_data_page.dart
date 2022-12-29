import 'dart:convert';
import 'package:api_project/modules/post_feed/controller/employee_data_controller.dart';
import 'package:api_project/modules/post_feed/controller/post_feed_controller.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

class EmployeeDataPage extends GetView<EmployeeDataController> {
  const EmployeeDataPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: GetBuilder<EmployeeDataController>(
            init: EmployeeDataController(),
            builder: (controller) {
              return Container(
                  child: controller.employeeData == null
                      ? CircularProgressIndicator()
                      : Card(
                          child: Container(
                          width: MediaQuery.of(context).size.width * 0.95,
                          child: Column(
                            children: [
                              Container(
                                  child: Image.network(controller.employeeData!
                                              .data!.profileImage ==
                                          ""
                                      ? "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Image_created_with_a_mobile_phone.png/640px-Image_created_with_a_mobile_phone.png"
                                      : controller
                                          .employeeData!.data!.profileImage!)),
                              Text("Name :" +
                                  " " +
                                  controller.employeeData!.data!.employeeName!),
                              Text("Salary :" +
                                  "  " +
                                  controller.employeeData!.data!.employeeSalary
                                      .toString()),
                              Text("Age : " +
                                  controller.employeeData!.data!.employeeAge
                                      .toString())
                            ],
                          ),
                        )));
            }));
  }
}
