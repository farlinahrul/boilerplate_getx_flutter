import 'package:json_annotation/json_annotation.dart';

import 'base_response.dart';
import 'model_factory.dart';

@JsonSerializable()
class ApiResponse<T> extends BaseResponse {
  @JsonKey(name: "data")
  @_Converter()
  final T? result;

  ApiResponse({
    required int status,
    required String message,
    required String domain,
    this.result,
  }) : super(status: status, message: message);

  factory ApiResponse.fromJson(
    Map<String, dynamic> json,
  ) {
    return ApiResponse<T>(
        status: json["code"] as int,
        message: json["message"] as String,
        domain: json["error"] as String,
        result: _Converter<T?>().fromJson(json["data"]));
  }
}

@JsonSerializable()
class ApiResponses<T> extends BaseResponse {
  @JsonKey(name: "data")
  @_Converter()
  List<T>? data;
  Meta? meta;

  ApiResponses({
    required int status,
    required String message,
    required String domain,
    this.data = const [],
    required this.meta,
  }) : super(status: status, message: message);

  factory ApiResponses.fromJson(Map<String, dynamic> json) => ApiResponses<T>(
        status: json["code"],
        message: json["message"],
        domain: json["error"] as String,
        data: List<T>.from(
          json["data"].map((x) => _Converter<T?>().fromJson(x)),
        ),
        meta: Meta.fromJson(json["_meta"]),
      );
}

class _Converter<T> implements JsonConverter<T?, Object?> {
  const _Converter();

  @override
  T? fromJson(Object? json) {
    if (json is Map<String, dynamic>) {
      return ModelFactory.fromJson(T, json) as T;
    }
    return json as T;
  }

  @override
  Object toJson(T? object) {
    return (object as Object);
  }
}

class Meta {
  Meta({
    this.currentPage,
    this.from,
    this.lastPage,
    this.links,
    this.path,
    this.perPage,
    this.to,
    this.total,
  });

  int? currentPage;
  int? from;
  int? lastPage;
  List<Link>? links;
  String? path;
  String? perPage;
  int? to;
  int? total;

  factory Meta.fromJson(Map<String, dynamic> json) => Meta(
        currentPage: json["current_page"],
        from: json["from"],
        lastPage: json["last_page"],
        links: json["links"] == null
            ? null
            : List<Link>.from(json["links"].map((x) => Link.fromJson(x))),
        path: json["path"],
        perPage: json["per_page"],
        to: json["to"],
        total: json["total"],
      );

  Map<String, dynamic> toJson() => {
        "current_page": currentPage,
        "from": from,
        "last_page": lastPage,
        "links": links == null
            ? null
            : List<dynamic>.from(links!.map((x) => x.toJson())),
        "path": path,
        "per_page": perPage,
        "to": to,
        "total": total,
      };
}

class Link {
  Link({
    this.url,
    this.label,
    this.active,
  });

  String? url;
  String? label;
  bool? active;

  factory Link.fromJson(Map<String, dynamic> json) => Link(
        url: json["url"],
        label: json["label"],
        active: json["active"],
      );

  Map<String, dynamic> toJson() => {
        "url": url,
        "label": label,
        "active": active,
      };
}
