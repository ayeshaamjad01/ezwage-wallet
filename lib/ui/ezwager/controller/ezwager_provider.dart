import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

import '../../../helper/api_functions.dart';
import '../model/getLinkedinPostsModel.dart';

class EZWagerProvider extends ChangeNotifier {
  List<GetLinkedinPostsModel> iframesList = [];
  bool apiLoadData = false;
  removeHeightTag(String value) {
    return value.substring(0, value.indexOf('height="')) +
        '' +
        value.substring(value.indexOf('width="'), value.length);
  }

  getEmbedPostsList(int page, context) async {
    var responseData;
    Response response = await ApiFunctions().getRequest(
        'appBlog?status=1&limit=5&pageNumber=' + page.toString(), context);
    if (response.statusCode == 200) {
      var decodedJson = jsonDecode(response.body);
      GetLinkedinPostsModel.currentPage =
          decodedJson['results']['_metadata']['currentPage'];
      GetLinkedinPostsModel.totalPages =
          decodedJson['results']['_metadata']['totalPages'];
      responseData = decodedJson['results']['data'];
      for (Map i in responseData) {
        iframesList.add(GetLinkedinPostsModel.fromJson(i));
      }
      await setApiLoadDataProcess(true);
    }

    for (int index = 0; index < iframesList.length; index++) {
      if (iframesList[index].url.contains('height="') == true)
        iframesList[index].url = removeHeightTag(iframesList[index].url);
    }
    await setApiLoadDataProcess(true);
    notifyListeners();
  }

  bool isLoadMore = false;
  setApiLoadMoreProcess(bool value) {
    isLoadMore = value;
    notifyListeners();
  }

  setApiLoadDataProcess(bool value) {
    apiLoadData = value;
    notifyListeners();
  }
}
