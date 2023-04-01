import 'package:boilerplate_getx_flutter/model/user.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'environment.dart';
import 'interceptor/dio.dart';
import 'wrapper/api_response.dart';

part 'api_services.g.dart';

@RestApi()
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  static Future<RestClient> create({
    Map<String, dynamic> headers = const {},
    int connectTimeout = 30000,
    int receiveTimeout = 30000,
  }) async {
    return RestClient(
      await AppDio().getDIO(
          headers: headers,
          connectTimeout: connectTimeout,
          receiveTimeout: receiveTimeout),
      baseUrl: ConfigEnvironments.getEnvironments().toString(),
    );
  }

  @GET("/users")
  Future<ApiResponses<User>> getUsers(); // This endpoint should be implement paginate

  @GET("/users/{id}")
  Future<ApiResponse<User>> getUserById(@Path("id") int id);
}

final client = RestClient.create();
