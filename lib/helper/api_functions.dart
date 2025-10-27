import 'dart:io';

import 'package:ezwage/global/navigations/authentication_navigation.dart';
import 'package:ezwage/global/utils/global_hive.dart';
import 'package:ezwage/global/utils/custom_snackbar.dart';
import 'package:ezwage/helper/application_dictionary.dart';
import 'package:ezwage/helper/url.dart';
import 'package:ezwage/ui/home/model/notification_timer.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:http/http.dart' as http;

class ApiFunctions {
  late String userToken;
  late Response response;
  String traceid = 'eb9e975c-e648-11ec-8fea-0242ac120002';
  logOutApplication(BuildContext context) {
    if (notificationTimer != null) notificationTimer!.cancel();
    CustomSnackBar(false)
        .showInSnackBar(translateText('Not_Connected_with_Internet'), context);
    navigateToAuthenticationScreen(context);
  }

  getRequest(String url, BuildContext context) async {
    try {
      userToken = preferences.get('token').toString();
      var apiLink = Uri.parse(BASE_URL + url);
      response = await get(apiLink, headers: {
        'Authorization': 'Bearer $userToken',
        'Content-Type': 'application/json',
        "Accept": "*/*",
        'traceid': traceid,
      });
    } on SocketException catch (_) {
      logOutApplication(context);
    }
    return response;
  }

  postRequest(String url, var json, BuildContext context) async {
    try {
      userToken = preferences.get('token').toString();
      var apiLink = Uri.parse(BASE_URL + url);
      response = await post(apiLink,
          headers: {
            'Authorization': 'Bearer $userToken',
            'Content-Type': 'application/json',
            "Accept": "*/*",
            'traceid': traceid,
          },
          body: json);
    } on SocketException catch (_) {
      logOutApplication(context);
    }
    return response;
  }

  loginRequest(String url, var json) async {
    var apiLink = Uri.parse(BASE_URL + url);
    response = await post(apiLink,
        headers: {
          'Content-Type': 'application/json',
          'Accept': '*/*',
          'traceid': traceid,
        },
        body: json);
    return response;
  }

  putRequest(String url, var json, BuildContext context) async {
    try {
      userToken = preferences.get('token').toString();
      var apiLink = Uri.parse(BASE_URL + url);
      response = await put(apiLink,
          headers: {
            'Authorization': 'Bearer $userToken',
            'Content-Type': 'application/json',
            "Accept": "*/*",
            'traceid': traceid,
          },
          body: json);
    } on SocketException catch (_) {
      logOutApplication(context);
    }
    return response;
  }

  patchRequest(String url, var json, BuildContext context) async {
    try {
      userToken = preferences.get('token').toString();
      var apiLink = Uri.parse(BASE_URL + url);
      response = await patch(apiLink,
          headers: {
            'Authorization': 'Bearer $userToken',
            'Content-Type': 'application/json',
            "Accept": "*/*",
            'traceid': traceid,
          },
          body: json);
    } on SocketException catch (_) {
      logOutApplication(context);
    }
    return response;
  }

  deleteRequest(String url, var json) async {
    userToken = preferences.get('token').toString();
    final client = http.Client();
    try {
      final delResponse =
          await client.send(http.Request("DELETE", Uri.parse(BASE_URL + url))
            ..headers["Content-type"] = "application/json"
            ..headers["Authorization"] = "Bearer $userToken"
            ..headers["traceid"] = traceid
            ..body = json);
      return delResponse.statusCode;
    } finally {
      client.close();
    }
  }
}
