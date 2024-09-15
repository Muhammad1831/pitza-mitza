import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class DioServices {
  Dio dio = Dio();

  Future<dynamic> postMethod(Map<String, dynamic> map, String url) async {
    try {
      var response = await dio.post(url,
          data: map,
          options: Options(
              responseType: ResponseType.json,
              contentType: 'application/json',
              method: 'POST'));

      return response;
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  Future<dynamic> getCategory(String url) async {
    try {
      var response = await dio.get(
        url,
        options: Options(
            responseType: ResponseType.json,
            contentType: 'application/json',
            method: 'GET'),
      );

      debugPrint(response.statusCode.toString());

      return response;
    } catch (e) {
      rethrow;
    }
  }

  Future<dynamic> getListFastFood(String url, int foodCategory) async {
    try {
      var response = await dio.get(
        url,
        queryParameters: {
          'food': '',
          'food__category': foodCategory,
        },
        options: Options(
            responseType: ResponseType.json,
            contentType: 'application/json',
            method: 'GET'),
      );

      return response;
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  Future<dynamic> getSearchList(String url, String search) async {
    try {
      var response = await dio.get(url,
          options: Options(
              responseType: ResponseType.json,
              contentType: 'application/json',
              method: 'POST'),
          queryParameters: {
            'search': search,
          });

      debugPrint(response.statusCode.toString());

      return response;
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
