import 'package:get/get.dart';
import 'package:starter_kit/api-handler/api-handler.dart';
import 'package:starter_kit/api-handler/api-repo.dart';
import 'package:starter_kit/controller/InitialStatusController.dart';

void setIntialSetup() {
  Get.put(ApiBaseHelper());
  Get.put(ApiRepository(Get.find()));
  Get.put(InitialStatusController(Get.find()));
}
