import 'package:dio/dio.dart';
import 'base_api.dart';

// Singleton
class HttpService {
  static final HttpService _instance = HttpService._internal();

  factory HttpService() {
    return _instance;
  }

  HttpService._internal() {
    // init
    _dio = Dio(BaseOptions(baseUrl: BaseAPI.baseUrl, contentType: "application/json"));
  }

  Dio _dio = Dio();

  Future<T> getData<T>({required String url, required T Function(dynamic data) builder, Map<String, dynamic>? header}) async {
    try {
      _dio.options.headers.addAll(header ?? {});
      var resp = await _dio.get(url);
      // json序列化的工作,由外部function處理
      return builder(resp.data);
    } catch (e) {
      print("Error: ${e}");
      return Future.value(null);
    }
  }

}
