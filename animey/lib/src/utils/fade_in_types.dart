part of '../base.imports.dart';

class FadeInType extends AnimeyType {
  const FadeInType({
    super.duration = const Duration(milliseconds: 500),
    super.delay = const Duration(milliseconds: 0),
    super.controller,
    super.manualTrigger = false,
    super.animate = true,
    super.onFinish,
    super.curve = Curves.easeOut,
  }) : super(infinite: false, from: 0.0);
}

class FadeInDownType extends AnimeyType {
  const FadeInDownType({
    super.duration = const Duration(milliseconds: 800),
    super.delay = Duration.zero,
    super.controller,
    super.manualTrigger = false,
    super.animate = true,
    super.from = 100,
    super.onFinish,
    super.curve = Curves.easeOut,
  }) : super(infinite: false);
}

class FadeInDownBigType extends AnimeyType {
  const FadeInDownBigType({
    super.duration = const Duration(milliseconds: 1300),
    super.delay = Duration.zero,
    super.controller,
    super.manualTrigger = false,
    super.animate = true,
    super.from = 600,
    super.onFinish,
    super.curve = Curves.easeOut,
  }) : super(infinite: false);
}

class FadeInUpType extends AnimeyType {
  const FadeInUpType({
    super.duration = const Duration(milliseconds: 800),
    super.delay = Duration.zero,
    super.controller,
    super.manualTrigger = false,
    super.animate = true,
    super.from = 100,
    super.onFinish,
    super.curve = Curves.easeOut,
  }) : super(infinite: false);
}

class FadeInUpBigType extends AnimeyType {
  const FadeInUpBigType({
    super.duration = const Duration(milliseconds: 1300),
    super.delay = Duration.zero,
    super.controller,
    super.manualTrigger = false,
    super.animate = true,
    super.from = 600,
    super.onFinish,
    super.curve = Curves.easeOut,
  }) : super(infinite: false);
}

class FadeInLeftType extends AnimeyType {
  const FadeInLeftType({
    super.duration = const Duration(milliseconds: 800),
    super.delay = Duration.zero,
    super.controller,
    super.manualTrigger = false,
    super.animate = true,
    super.from = 100,
    super.onFinish,
    super.curve = Curves.easeOut,
  }) : super(infinite: false);
}

class FadeInLeftBigType extends AnimeyType {
  const FadeInLeftBigType({
    super.duration = const Duration(milliseconds: 1300),
    super.delay = Duration.zero,
    super.controller,
    super.manualTrigger = false,
    super.animate = true,
    super.from = 600,
    super.onFinish,
    super.curve = Curves.easeOut,
  }) : super(infinite: false);
}

class FadeInRightType extends AnimeyType {
  const FadeInRightType({
    super.duration = const Duration(milliseconds: 800),
    super.delay = Duration.zero,
    super.controller,
    super.manualTrigger = false,
    super.animate = true,
    super.from = 100,
    super.onFinish,
    super.curve = Curves.easeOut,
  }) : super(infinite: false);
}

class FadeInRightBigType extends AnimeyType {
  const FadeInRightBigType({
    super.duration = const Duration(milliseconds: 1300),
    super.delay = Duration.zero,
    super.controller,
    super.manualTrigger = false,
    super.animate = true,
    super.from = 600,
    super.onFinish,
    super.curve = Curves.easeOut,
  }) : super(infinite: false);
}

class FadeInDirectionalType extends AnimeyType {
  const FadeInDirectionalType({
    super.duration = const Duration(milliseconds: 800),
    super.delay = Duration.zero,
    super.controller,
    super.manualTrigger = false,
    super.animate = true,
    super.from = 100,
    super.onFinish,
    super.curve = Curves.easeOut,
  }) : super(infinite: false);
}

class FadeInDirectionalBigType extends AnimeyType {
  const FadeInDirectionalBigType({
    super.duration = const Duration(milliseconds: 1300),
    super.delay = Duration.zero,
    super.controller,
    super.manualTrigger = false,
    super.animate = true,
    super.from = 600,
    super.onFinish,
    super.curve = Curves.easeOut,
  }) : super(infinite: false);
}
