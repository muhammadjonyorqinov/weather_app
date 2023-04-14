import 'package:flutter/foundation.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:dio/dio.dart';
import '/utils/core/app_constants.dart';

class HttpClientProvider implements IHttpClientProvider {
  var client = Dio(BaseOptions(
    baseUrl: AppConstants.BASE_URL,
  ));
  static HttpClientProvider? _instance;


  static HttpClientProvider get getInstance =>
      _instance = _instance ?? HttpClientProvider();
  HttpClientProvider() {
    client.options.baseUrl = AppConstants.BASE_URL;
    client.interceptors.addAll(
      [
        if (kDebugMode)
          PrettyDioLogger(
            requestHeader: true,
            requestBody: true,
            responseBody: true,
            responseHeader: false,
            error: true,
            compact: true,
            maxWidth: 90,
          ),
        InterceptorsWrapper(
          onRequest: (options, handler) {
            var customHeaders = {
              'Content-type': 'application/json',
              'Accept': 'application/json',
            };
            options.headers.addAll(customHeaders);
            return handler.next(options);
          },
          onError: (err, errHandler) async {
            if (err.response != null) {
              return errHandler.resolve(err.response!);
            }
            return errHandler.next(err);
          },
        ),
      ],
    );
  }

  @override
  Dio getHttpClient() {
    return client;
  }
}

abstract class IHttpClientProvider {
  Dio? getHttpClient();
}
