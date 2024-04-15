part of '../base.imports.dart';

typedef CloseContainerBuilder = Widget Function(
  BuildContext context,
  VoidCallback action,
);

typedef OpenContainerBuilder<S> = Widget Function(
  BuildContext context,
  CloseContainerActionCallback<S> action,
);

class AnimatorPage extends Abstractor {
  ///
  //? By animations package
  AnimatorPage.switcher({
    super.key,
    required Widget child,
    Duration duration = const Duration(milliseconds: 300),
    bool reverse = false,
    PageTransitionType pageTransitionType = PageTransitionType.fadeThrough,
  }) : super(
          child: PageTransitionSwitcher(
            key: key,
            duration: duration,
            reverse: reverse,
            transitionBuilder: (widget, anim1, anim2) {
              switch (pageTransitionType) {
                case PageTransitionType.fadeScale:
                  return FadeScaleTransition(
                    animation: anim1,
                    child: widget,
                  );
                case PageTransitionType.fadeThrough:
                  return FadeThroughTransition(
                    animation: anim1,
                    secondaryAnimation: anim2,
                    child: widget,
                  );
              }
            },
            child: child,
          ),
        );

  ///
  //? By animations package
  AnimatorPage.openContainer({
    super.key,
    Color closedColor = Colors.white,
    Color openColor = Colors.white,
    Color? middleColor,
    double closedElevation = 0.0,
    double openElevation = 4.0,
    ShapeBorder openShape = const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(14.0)),
    ),
    ShapeBorder closedShape = const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(14.0)),
    ),
    required CloseContainerBuilder closedBuilder,
    required OpenContainerBuilder openBuilder,
    bool tappable = true,
    Duration transitionDuration = const Duration(seconds: 1),
    ContainerTransitionType transitionType =
        ContainerTransitionType.fadeThrough,
    bool useRootNavigator = false,
  }) : super(
          child: OpenContainer(
            key: key,
            closedColor: closedColor,
            openColor: openColor,
            middleColor: middleColor,
            closedElevation: closedElevation,
            openElevation: openElevation,
            openShape: openShape,
            closedShape: closedShape,
            closedBuilder: closedBuilder,
            openBuilder: openBuilder,
            tappable: tappable,
            transitionDuration: transitionDuration,
            transitionType: transitionType,
            useRootNavigator: useRootNavigator,
          ),
        );
}
