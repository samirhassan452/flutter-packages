part of '../base.imports.dart';

extension UriConversion on Uri {
  Uri embedUriParam(dynamic param, {String pattern = r'/:([^:]+):'}) {
    final paramSegments = param.toString().split("/");
    return replace(
      path: [
        ...path.replaceAll(RegExp(pattern), "").split('/'),
        ...paramSegments,
      ].join("/"),
    );
  }

  Uri embedUriParams(List<dynamic> params, {String pattern = r'/:([^:]+):'}) {
    final flattenedSegments = params
        .map((param) => param.toString().split("/"))
        .expand((subList) => subList)
        .toList();
    return replace(
      path: [
        ...path.replaceAll(RegExp(pattern), "").split("/"),
        ...flattenedSegments,
      ].join("/"),
    );
  }

  Uri embedQueryParams(Map<String, dynamic> params) {
    return replace(
      queryParameters: params.isEmpty
          // ? queryParameters // previous | initial params if new params isEmpty
          ? null // to prevent add ? at the end of path
          : params.map((key, value) => MapEntry(key, value.toString())),
    );
  }
}

extension UrlConversion on String {
  String embedParam(dynamic param, {String pattern = r'/:([^:]+):'}) {
    final paramSegments = param.toString().split("/");
    return [
      ...replaceAll(RegExp(pattern), "").split('/'),
      ...paramSegments,
    ].join("/");
  }

  String embedParams(List<dynamic> params, {String pattern = r'/:([^:]+):'}) {
    final flattenedSegments = params
        .map((param) => param.toString().split("/"))
        .expand((subList) => subList)
        .toList();
    return [
      ...replaceAll(RegExp(pattern), "").split("/"),
      ...flattenedSegments,
    ].join("/");
  }
}
