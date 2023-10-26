import 'package:starter_kit/views/user-list/controller/user_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserListScreen extends StatelessWidget {
  final UserController userController = Get.find();

  UserListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Users')),
      body: Obx(() {
        if (userController.isLoading.value) {
          return const Center(child: CircularProgressIndicator());
        } else if (userController.hasError.value) {
          return const Center(child: Text('Error fetching users.'));
        } else if (userController.users.isEmpty) {
          return const Center(child: Text('No users found.'));
        } else {
          return ListView.builder(
            itemCount: userController.users.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(userController.users[index].name),
                subtitle: Text(userController.users[index].email),
              );
            },
          );
        }
      }),
    );
  }
}
