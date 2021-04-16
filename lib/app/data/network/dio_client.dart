import 'package:dio/dio.dart';

class DioClient {
  var _dioClient;

  DioClient._();

  static final DioClient _instant = DioClient._(); // Singleton

  factory DioClient() {
    _instant._initialize();
    return _instant;
  }

  _initialize() {
    BaseOptions options = new BaseOptions(
      baseUrl: "https://api.thedogapi.com/",
      connectTimeout: 10000,
      receiveTimeout: 10000,
    );
    this._dioClient = Dio(options);
  }

  Future<dynamic> get(String uri, {Map data}) async {
    try {
      final Response response = await this._dioClient.get(uri, queryParameters: data);
      return response.data;
    } catch (error) {
      return Future.error(error);
    }
  }

  Future<dynamic> post(String uri, {Map data}) async {
    try {
      final Response response = await this._dioClient.post(uri, queryParameters: data);
      return response.data;
    } catch (error) {
      return Future.error(error);
    }
  }
}
