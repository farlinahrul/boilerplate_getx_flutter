import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class BaseResponse {
  @JsonKey(name: 'status')
  int status;
  @JsonKey(name: 'message')
  String message;

  BaseResponse({required this.status, required this.message});

  factory BaseResponse.fromJson(Map<String, dynamic> json) =>
      BaseResponse(status: json["code"], message: json["message"]);

  Map<dynamic, dynamic> toJson() => <String, dynamic>{
        'status': this.status,
        'message': this.message,
      };
}
