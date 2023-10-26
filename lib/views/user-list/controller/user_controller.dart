import 'package:starter_kit/api-handler/api-extention.dart';
import 'package:starter_kit/api-handler/api-handler.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:starter_kit/api-handler/api-repo.dart';
import 'package:starter_kit/views/user-list/models/user_model.dart';

class UserController extends GetxController {
  final apiRepository = ApiRepository(ApiBaseHelper());
  var users = RxList<User>();
  var isLoading = true.obs;
  var hasError = false.obs;

  @override
  void onReady() {
    super.onReady();
    fetchUsers();
  }

  fetchUsers() async {
    isLoading.value = true;
    try {
      await apiRepository
          .getUserData()
          .getResponse<Response<String>>((response) {
        if (response.statusCode == 200 || response.statusCode == 201) {
          final List<dynamic> data = response.data;
          users.addAll(data.map((item) => User.fromJson(item)).toList());
        } else {
          hasError.value = true;
        }
        isLoading.value = false;
      });
    } catch (e) {
      print(e);
      hasError.value = true;
      isLoading.value = false;
    }
  }

  @override
  void onClose() {
    debugPrint("Controller destroyed");
  }
}
