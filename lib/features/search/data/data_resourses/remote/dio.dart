import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

Dio buildDioClient(String base) {
  final dio = Dio()
    ..options =
        BaseOptions(baseUrl: base, contentType: "application/json", headers: {
      'Authorization':
          "bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczovL3Fhbm9ueS5hcHAvYXBpL3YzL3VzZXIvbG9naW4iLCJpYXQiOjE3MjM2MzUxNjcsImV4cCI6MjA4MzYzNTE2NywibmJmIjoxNzIzNjM1MTY3LCJqdGkiOiIxYTZHOTRQWGhXZm8yYlljIiwic3ViIjoxNDQ2LCJwcnYiOiIyM2JkNWM4OTQ5ZjYwMGFkYjM5ZTcwMWM0MDA4NzJkYjdhNTk3NmY3In0.r8iSP8y7iQgz_Gx4fOz-OPp1DtlocBY3SCMjLjVca04"
    });
  dio.interceptors.add(
    InterceptorsWrapper(
      onRequest: (options, handler) {
        if (kDebugMode) {
          print("Request: ${options.method} ${options.uri}");
        }
        if (kDebugMode) {
          print("Headers: ${options.headers}");
        }
        if (kDebugMode) {
          print("Data: ${options.data}");
        }
        return handler.next(options);
      },
      onResponse: (response, handler) {
        if (kDebugMode) {
          print("Response: ${response.statusCode} ${response.data}");
        }
        return handler.next(response);
      },
      onError: (DioException e, handler) {
        if (kDebugMode) {
          print("Error: ${e.response?.statusCode} ${e.response?.data}");
        }
        return handler.next(e);
      },
    ),
  );

  return dio;
}
