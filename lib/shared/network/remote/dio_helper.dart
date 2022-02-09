import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';


// api key for news api : 25d31f28f03e4f44bd4d5436a59cef6b
class DioHelper {
  static Dio? dio;

  static init(){
    dio = Dio(
      BaseOptions(
        baseUrl: 'https://newsapi.org',
        receiveDataWhenStatusError: true,
      ),
    );
  }


  static Future<Response?> getData({
    required String url,
    required Map<String, dynamic> query,
  }) async {
    return await dio?.get(url, queryParameters: query);
  }
}