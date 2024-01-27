part of '../base.imports.dart';

enum FontWeightType {
  thin(weight: FontWeight.w100),
  extraLight(weight: FontWeight.w200),
  light(weight: FontWeight.w300),
  regular(weight: FontWeight.w400),
  medium(weight: FontWeight.w500),
  semiBold(weight: FontWeight.w600),
  bold(weight: FontWeight.w700),
  extraBold(weight: FontWeight.w800),
  black(weight: FontWeight.w900),
  ;

  const FontWeightType({required this.weight});
  final FontWeight weight;
}
