part of '../base.imports.dart';

extension UriConversion on Uri {
  Uri embedUriParam(dynamic param) => replace(
        pathSegments: [
          ...pathSegments,
          ...param.toString().split("/"),
        ].toList(),
      );

  Uri embedUriParams(List<dynamic> params) => replace(
        pathSegments: [
          ...pathSegments,
          ...params
              .map((param) => param.toString().split("/").toList())
              .toList()
              .expand((subList) => subList),
        ].toList(),
      );

  Uri embedQueryParams(Map<String, dynamic> params) {
    return replace(
      queryParameters: params.isEmpty
          // ? queryParameters // previous | initial params if new params isEmpty
          ? null // to prevent add ? at the end of path
          : params.map((key, value) => MapEntry(key, value.toString())),
    );
  }
}
