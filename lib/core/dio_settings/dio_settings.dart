import "dart:async";

import "package:dio/dio.dart";
import "package:flutter/foundation.dart";
import "package:new_element_training/core/const/const.dart";

class DioSettings {
  DioSettings() {
    unawaited(setup());
  }

  Dio dio = Dio(
    BaseOptions(
      baseUrl: "https://api.mindbodyonline.com/public/v6/",
      contentType: "application/json",
      headers: {
        "Content-Type": "application/json",
        "SiteId": -99,
        "Api-Key": AppConsts.apiKey,
      },
      connectTimeout: const Duration(seconds: 40),
      receiveTimeout: const Duration(seconds: 40),
    ),
  );

  Future<void> setup() async {
    final interceptors = dio.interceptors;

    interceptors.cast();

    final logInterceptor = LogInterceptor(
      requestBody: true,
      responseBody: true,
    );
    final headerInterceptors = QueuedInterceptorsWrapper(
      onRequest: (options, handler) => handler.next(options),
      onError: (DioException error, handler) {
        handler.next(error);
      },
      onResponse: (response, handler) {
        return handler.next(response);
      },
    );
    interceptors.addAll([if (kDebugMode) logInterceptor, headerInterceptors]);
  }
}
