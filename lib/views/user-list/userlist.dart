import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get_connect/http/src/response/response.dart';
import 'package:starter_kit/api-handler/api-extention.dart';
import 'package:starter_kit/api-handler/api-handler.dart';
import 'package:starter_kit/api-handler/api-repo.dart';
import 'package:starter_kit/views/user-list/models/user_model.dart';

class UserListScreen extends StatefulWidget {
  const UserListScreen({super.key});

  @override
  _UserListScreenState createState() => _UserListScreenState();
}

class _UserListScreenState extends State<UserListScreen> {
  final apiRepository = ApiRepository(ApiBaseHelper());
  List<User> users = [];
  Future<bool>? _fetchUsersFuture;

  @override
  void initState() {
    super.initState();
    _fetchUsersFuture = fetchUsers(); // Initiate the future here
  }

  Future<bool> fetchUsers() async {
    final completer = Completer<bool>();

    await apiRepository.getUserData().getResponse<Response<String>>((response) {
      if (response.statusCode == 200 || response.statusCode == 201) {
        final List<dynamic> data = response.data;
        setState(() {
          users = data.map((item) => User.fromJson(item)).toList();
        });
        completer.complete(true);
      } else {
        completer.complete(false);
      }
    });

    return completer.future;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Users')),
      body: FutureBuilder<bool>(
        future: _fetchUsersFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (snapshot.data == null || users.isEmpty) {
            return const Center(child: Text('No users found.'));
          } else {
            return ListView.builder(
              itemCount: users.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(users[index].name),
                  subtitle: Text(users[index].email),
                );
              },
            );
          }
        },
      ),
    );
  }
}
