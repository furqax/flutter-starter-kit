// ignore_for_file: file_names

import 'package:starter_kit/controller/InitialStatusController.dart';
import 'package:get/get.dart' hide Trans;

class IntialBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<InitialStatusController>(InitialStatusController(Get.find()));
  }
}
