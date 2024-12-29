import 'dart:convert';

import 'package:appwrite/appwrite.dart';
import 'package:appwrite/models.dart' as models;

class AppwriteProvider {
  Client client = Client();

  Account? account;

  AppwriteProvider() {
    client.setEndpoint('https://cloud.appwrite.io/v1').setProject('677027a700276c9f2c2d').setSelfSigned(status: true);
    account = Account(client);
  }

  Future<models.User> signUp(Map map) async {
    final response = await account!.create(
      userId: map["userId"],
      email: map["email"],
      password: map["password"],
      name: map["name"],
    );

    return response;
  }

  Future<models.Session> login(Map map) async {
    final response = await account!.createEmailPasswordSession(
      email: map["email"],
      password: map["password"],
    );
    return response;
  }
}
