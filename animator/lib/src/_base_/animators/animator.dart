part of '../base.imports.dart';

class Animator extends Abstractor {
  ///
  Animator.scrollTop({
    super.key,
    required ScrollController scrollController,
    required Widget child,
    Duration duration = const Duration(seconds: 1),
    Curve curve = Curves.linear,
    //
    Widget Function(VoidCallback)? buttonBuilder,
    FloatingActionButtonLocation buttonPosition =
        FloatingActionButtonLocation.startDocked,
    Duration switchInDuration = const Duration(milliseconds: 300),
    Duration switchOutDuration = const Duration(milliseconds: 300),
    Curve switchInCurve = Curves.linear,
    Curve switchOutCurve = Curves.linear,
  }) : super(
          child: ScrollTopWidget(
            key: key,
            scrollController: scrollController,
            duration: duration,
            curve: curve,
            buttonBuilder: buttonBuilder,
            buttonPosition: buttonPosition,
            switchInDuration: switchInDuration,
            switchOutDuration: switchOutDuration,
            switchInCurve: switchInCurve,
            switchOutCurve: switchOutCurve,
            child: child,
          ),
        );

  ///
  Animator.shimmer({
    super.key,

    /// accepts a child Widget over which the animation is to be displayed
    Widget? child,

    /// accepts a Size over which the animation is to be displayed
    Size size = Size.zero,

    /// accepts a BorderRadius over which the animation is to be displayed
    BorderRadiusGeometry borderRadius =
        const BorderRadius.all(Radius.circular(8.0)),

    /// accepts a bool which toggles the animation on/off. Default value is true
    bool enabled = true,

    /// accepts a Color over which the animation is to be displayed
    Color backgroundColor = const Color(0xFFE0E0E0),

    /// accepts a parameter of type Color and sets the color of the animation overlay. Default value is Colors.white
    Color color = Colors.white,

    /// accepts a parameter of type double and sets the Opacity of the color of the animation overlay. Default value is 0.3
    double colorOpacity = 0.3,

    /// accepts a Duration that would be the time period of animation. Default value is Duration(seconds: 3)
    Duration duration = const Duration(seconds: 3),

    /// accepts a Duration that would be the interval between the repeating animation. Default value is Duration(seconds: 0) i.e. no interval
    Duration interval = const Duration(seconds: 0),

    /// accepts a ShimmerDirection and aligns the animation accordingly. Default value is ShimmerDirection.fromLBRT()
    ShimmerDirection direction = const ShimmerDirection.fromLTRB(),
  }) : super(
          child: ConstrainedBox(
            key: key,
            constraints: BoxConstraints.tight(size),
            child: ClipRRect(
              borderRadius: borderRadius,
              child: Shimmer(
                enabled: enabled,
                color: color,
                colorOpacity: colorOpacity,
                duration: duration,
                interval: interval,
                direction: direction,
                child: child ?? ColoredBox(color: backgroundColor),
              ),
            ),
          ),
        );

  /// FadeIn
  Animator.fadeIn({
    super.key,
    required Widget child,
    Duration duration = const Duration(milliseconds: 500),
    Duration delay = const Duration(milliseconds: 0),
    dynamic Function(AnimationController)? controller,
    bool manualTrigger = false,
    bool animate = true,
  }) : super(
          child: FadeIn(
            key: key,
            duration: duration,
            delay: delay,
            controller: controller,
            manualTrigger: manualTrigger,
            animate: animate,
            child: child,
          ),
        );
  Animator.fadeInDown({
    super.key,
    required Widget child,
    Duration duration = const Duration(milliseconds: 800),
    Duration delay = const Duration(milliseconds: 0),
    dynamic Function(AnimationController)? controller,
    bool manualTrigger = false,
    bool animate = true,
    double from = 100,
  }) : super(
          child: FadeInDown(
            key: key,
            duration: duration,
            delay: delay,
            controller: controller,
            manualTrigger: manualTrigger,
            animate: animate,
            from: from,
            child: child,
          ),
        );
  Animator.fadeInDownBig({
    super.key,
    required Widget child,
    Duration duration = const Duration(milliseconds: 1300),
    Duration delay = const Duration(milliseconds: 0),
    dynamic Function(AnimationController)? controller,
    bool manualTrigger = false,
    bool animate = true,
    double from = 600,
  }) : super(
          child: FadeInDownBig(
            key: key,
            duration: duration,
            delay: delay,
            controller: controller,
            manualTrigger: manualTrigger,
            animate: animate,
            from: from,
            child: child,
          ),
        );
  Animator.fadeInUp({
    super.key,
    required Widget child,
    Duration duration = const Duration(milliseconds: 800),
    Duration delay = const Duration(milliseconds: 0),
    dynamic Function(AnimationController)? controller,
    bool manualTrigger = false,
    bool animate = true,
    double from = 100,
  }) : super(
          child: FadeInUp(
            key: key,
            duration: duration,
            delay: delay,
            controller: controller,
            manualTrigger: manualTrigger,
            animate: animate,
            from: from,
            child: child,
          ),
        );
  Animator.fadeInUpBig({
    super.key,
    required Widget child,
    Duration duration = const Duration(milliseconds: 1300),
    Duration delay = const Duration(milliseconds: 0),
    dynamic Function(AnimationController)? controller,
    bool manualTrigger = false,
    bool animate = true,
    double from = 600,
  }) : super(
          child: FadeInUpBig(
            key: key,
            duration: duration,
            delay: delay,
            controller: controller,
            manualTrigger: manualTrigger,
            animate: animate,
            from: from,
            child: child,
          ),
        );
  Animator.fadeInLeft({
    super.key,
    required Widget child,
    Duration duration = const Duration(milliseconds: 800),
    Duration delay = const Duration(milliseconds: 0),
    dynamic Function(AnimationController)? controller,
    bool manualTrigger = false,
    bool animate = true,
    double from = 100,
  }) : super(
          child: FadeInLeft(
            key: key,
            duration: duration,
            delay: delay,
            controller: controller,
            manualTrigger: manualTrigger,
            animate: animate,
            from: from,
            child: child,
          ),
        );
  Animator.fadeInLeftBig({
    super.key,
    required Widget child,
    Duration duration = const Duration(milliseconds: 1200),
    Duration delay = const Duration(milliseconds: 0),
    dynamic Function(AnimationController)? controller,
    bool manualTrigger = false,
    bool animate = true,
    double from = 600,
  }) : super(
          child: FadeInLeftBig(
            key: key,
            duration: duration,
            delay: delay,
            controller: controller,
            manualTrigger: manualTrigger,
            animate: animate,
            from: from,
            child: child,
          ),
        );
  Animator.fadeInRight({
    super.key,
    required Widget child,
    Duration duration = const Duration(milliseconds: 800),
    Duration delay = const Duration(milliseconds: 0),
    dynamic Function(AnimationController)? controller,
    bool manualTrigger = false,
    bool animate = true,
    double from = 100,
  }) : super(
          child: FadeInRight(
            key: key,
            duration: duration,
            delay: delay,
            controller: controller,
            manualTrigger: manualTrigger,
            animate: animate,
            from: from,
            child: child,
          ),
        );
  Animator.fadeInRightBig({
    super.key,
    required Widget child,
    Duration duration = const Duration(milliseconds: 1200),
    Duration delay = const Duration(milliseconds: 0),
    dynamic Function(AnimationController)? controller,
    bool manualTrigger = false,
    bool animate = true,
    double from = 600,
  }) : super(
          child: FadeInRightBig(
            key: key,
            duration: duration,
            delay: delay,
            controller: controller,
            manualTrigger: manualTrigger,
            animate: animate,
            from: from,
            child: child,
          ),
        );

  /// FadeOut
  Animator.fadeOut({
    super.key,
    required Widget child,
    Duration duration = const Duration(milliseconds: 300),
    Duration delay = const Duration(milliseconds: 0),
    dynamic Function(AnimationController)? controller,
    bool manualTrigger = false,
    bool animate = false,
  }) : super(
          child: FadeOut(
            key: key,
            duration: duration,
            delay: delay,
            controller: controller,
            manualTrigger: manualTrigger,
            animate: animate,
            child: child,
          ),
        );
  Animator.fadeOutDown({
    super.key,
    required Widget child,
    Duration duration = const Duration(milliseconds: 800),
    Duration delay = const Duration(milliseconds: 0),
    dynamic Function(AnimationController)? controller,
    bool manualTrigger = false,
    bool animate = false,
    double from = 100,
  }) : super(
          child: FadeOutDown(
            key: key,
            duration: duration,
            delay: delay,
            controller: controller,
            manualTrigger: manualTrigger,
            animate: animate,
            from: from,
            child: child,
          ),
        );
  Animator.fadeOutDownBig({
    super.key,
    required Widget child,
    Duration duration = const Duration(milliseconds: 1300),
    Duration delay = const Duration(milliseconds: 0),
    dynamic Function(AnimationController)? controller,
    bool manualTrigger = false,
    bool animate = false,
    double from = 600,
  }) : super(
          child: FadeOutDownBig(
            key: key,
            duration: duration,
            delay: delay,
            controller: controller,
            manualTrigger: manualTrigger,
            animate: animate,
            from: from,
            child: child,
          ),
        );
  Animator.fadeOutUp({
    super.key,
    required Widget child,
    Duration duration = const Duration(milliseconds: 800),
    Duration delay = const Duration(milliseconds: 0),
    dynamic Function(AnimationController)? controller,
    bool manualTrigger = false,
    bool animate = false,
    double from = 100,
  }) : super(
          child: FadeOutUp(
            key: key,
            duration: duration,
            delay: delay,
            controller: controller,
            manualTrigger: manualTrigger,
            animate: animate,
            from: from,
            child: child,
          ),
        );
  Animator.fadeOutUpBig({
    super.key,
    required Widget child,
    Duration duration = const Duration(milliseconds: 1300),
    Duration delay = const Duration(milliseconds: 0),
    dynamic Function(AnimationController)? controller,
    bool manualTrigger = false,
    bool animate = false,
    double from = 600,
  }) : super(
          child: FadeOutUpBig(
            key: key,
            duration: duration,
            delay: delay,
            controller: controller,
            manualTrigger: manualTrigger,
            animate: animate,
            from: from,
            child: child,
          ),
        );
  Animator.fadeOutLeft({
    super.key,
    required Widget child,
    Duration duration = const Duration(milliseconds: 800),
    Duration delay = const Duration(milliseconds: 0),
    dynamic Function(AnimationController)? controller,
    bool manualTrigger = false,
    bool animate = false,
    double from = 100,
  }) : super(
          child: FadeOutLeft(
            key: key,
            duration: duration,
            delay: delay,
            controller: controller,
            manualTrigger: manualTrigger,
            animate: animate,
            from: from,
            child: child,
          ),
        );
  Animator.fadeOutLeftBig({
    super.key,
    required Widget child,
    Duration duration = const Duration(milliseconds: 1300),
    Duration delay = const Duration(milliseconds: 0),
    dynamic Function(AnimationController)? controller,
    bool manualTrigger = false,
    bool animate = false,
    double from = 600,
  }) : super(
          child: FadeOutLeftBig(
            key: key,
            duration: duration,
            delay: delay,
            controller: controller,
            manualTrigger: manualTrigger,
            animate: animate,
            from: from,
            child: child,
          ),
        );
  Animator.fadeOutRight({
    super.key,
    required Widget child,
    Duration duration = const Duration(milliseconds: 800),
    Duration delay = const Duration(milliseconds: 0),
    dynamic Function(AnimationController)? controller,
    bool manualTrigger = false,
    bool animate = false,
    double from = 100,
  }) : super(
          child: FadeOutRight(
            key: key,
            duration: duration,
            delay: delay,
            controller: controller,
            manualTrigger: manualTrigger,
            animate: animate,
            from: from,
            child: child,
          ),
        );
  Animator.fadeOutRightBig({
    super.key,
    required Widget child,
    Duration duration = const Duration(milliseconds: 1200),
    Duration delay = const Duration(milliseconds: 0),
    dynamic Function(AnimationController)? controller,
    bool manualTrigger = false,
    bool animate = false,
    double from = 600,
  }) : super(
          child: FadeOutRightBig(
            key: key,
            duration: duration,
            delay: delay,
            controller: controller,
            manualTrigger: manualTrigger,
            animate: animate,
            from: from,
            child: child,
          ),
        );

  /// BounceIn
  Animator.bounceInDown({
    super.key,
    required Widget child,
    Duration duration = const Duration(milliseconds: 1000),
    Duration delay = const Duration(milliseconds: 0),
    dynamic Function(AnimationController)? controller,
    bool manualTrigger = false,
    bool animate = true,
    double from = 75,
  }) : super(
          child: BounceInDown(
            key: key,
            duration: duration,
            delay: delay,
            controller: controller,
            manualTrigger: manualTrigger,
            animate: animate,
            from: from,
            child: child,
          ),
        );
  Animator.bounceInUp({
    super.key,
    required Widget child,
    Duration duration = const Duration(milliseconds: 1000),
    Duration delay = const Duration(milliseconds: 0),
    dynamic Function(AnimationController)? controller,
    bool manualTrigger = false,
    bool animate = true,
    double from = 75,
  }) : super(
          child: BounceInUp(
            key: key,
            duration: duration,
            delay: delay,
            controller: controller,
            manualTrigger: manualTrigger,
            animate: animate,
            from: from,
            child: child,
          ),
        );
  Animator.bounceInLeft({
    super.key,
    required Widget child,
    Duration duration = const Duration(milliseconds: 1000),
    Duration delay = const Duration(milliseconds: 0),
    dynamic Function(AnimationController)? controller,
    bool manualTrigger = false,
    bool animate = true,
    double from = 75,
  }) : super(
          child: BounceInLeft(
            key: key,
            duration: duration,
            delay: delay,
            controller: controller,
            manualTrigger: manualTrigger,
            animate: animate,
            from: from,
            child: child,
          ),
        );
  Animator.bounceInRight({
    super.key,
    required Widget child,
    Duration duration = const Duration(milliseconds: 1000),
    Duration delay = const Duration(milliseconds: 0),
    dynamic Function(AnimationController)? controller,
    bool manualTrigger = false,
    bool animate = true,
    double from = 75,
  }) : super(
          child: BounceInRight(
            key: key,
            duration: duration,
            delay: delay,
            controller: controller,
            manualTrigger: manualTrigger,
            animate: animate,
            from: from,
            child: child,
          ),
        );

  /// ElasticIn
  Animator.elasticIn({
    super.key,
    required Widget child,
    Duration duration = const Duration(milliseconds: 1000),
    Duration delay = const Duration(milliseconds: 0),
    dynamic Function(AnimationController)? controller,
    bool manualTrigger = false,
    bool animate = true,
  }) : super(
          child: ElasticIn(
            key: key,
            duration: duration,
            delay: delay,
            controller: controller,
            manualTrigger: manualTrigger,
            animate: animate,
            child: child,
          ),
        );
  Animator.elasticInDown({
    super.key,
    required Widget child,
    Duration duration = const Duration(milliseconds: 1000),
    Duration delay = const Duration(milliseconds: 0),
    dynamic Function(AnimationController)? controller,
    bool manualTrigger = false,
    bool animate = true,
    double from = 200,
    double to = 100,
  }) : super(
          child: ElasticInDown(
            key: key,
            duration: duration,
            delay: delay,
            controller: controller,
            manualTrigger: manualTrigger,
            animate: animate,
            from: from,
            to: to,
            child: child,
          ),
        );
  Animator.elasticInUp({
    super.key,
    required Widget child,
    Duration duration = const Duration(milliseconds: 1000),
    Duration delay = const Duration(milliseconds: 0),
    dynamic Function(AnimationController)? controller,
    bool manualTrigger = false,
    bool animate = true,
    double from = 200,
  }) : super(
          child: ElasticInUp(
            key: key,
            duration: duration,
            delay: delay,
            controller: controller,
            manualTrigger: manualTrigger,
            animate: animate,
            from: from,
            child: child,
          ),
        );
  Animator.elasticInLeft({
    super.key,
    required Widget child,
    Duration duration = const Duration(milliseconds: 1000),
    Duration delay = const Duration(milliseconds: 0),
    dynamic Function(AnimationController)? controller,
    bool manualTrigger = false,
    bool animate = true,
    double from = 200,
    double to = 100,
  }) : super(
          child: ElasticInLeft(
            key: key,
            duration: duration,
            delay: delay,
            controller: controller,
            manualTrigger: manualTrigger,
            animate: animate,
            from: from,
            to: to,
            child: child,
          ),
        );
  Animator.elasticInRight({
    super.key,
    required Widget child,
    Duration duration = const Duration(milliseconds: 1000),
    Duration delay = const Duration(milliseconds: 0),
    dynamic Function(AnimationController)? controller,
    bool manualTrigger = false,
    bool animate = true,
    double from = 200,
  }) : super(
          child: ElasticInRight(
            key: key,
            duration: duration,
            delay: delay,
            controller: controller,
            manualTrigger: manualTrigger,
            animate: animate,
            from: from,
            child: child,
          ),
        );

  /// SlideIns
  Animator.slideInDown({
    super.key,
    required Widget child,
    Duration duration = const Duration(milliseconds: 600),
    Duration delay = const Duration(milliseconds: 0),
    dynamic Function(AnimationController)? controller,
    bool manualTrigger = false,
    bool animate = true,
    double from = 100,
  }) : super(
          child: SlideInDown(
            key: key,
            duration: duration,
            delay: delay,
            controller: controller,
            manualTrigger: manualTrigger,
            animate: animate,
            from: from,
            child: child,
          ),
        );
  Animator.slideInUp({
    super.key,
    required Widget child,
    Duration duration = const Duration(milliseconds: 600),
    Duration delay = const Duration(milliseconds: 0),
    dynamic Function(AnimationController)? controller,
    bool manualTrigger = false,
    bool animate = true,
    double from = 100,
  }) : super(
          child: SlideInUp(
            key: key,
            duration: duration,
            delay: delay,
            controller: controller,
            manualTrigger: manualTrigger,
            animate: animate,
            from: from,
            child: child,
          ),
        );
  Animator.slideInLeft({
    super.key,
    required Widget child,
    Duration duration = const Duration(milliseconds: 600),
    Duration delay = const Duration(milliseconds: 0),
    dynamic Function(AnimationController)? controller,
    bool manualTrigger = false,
    bool animate = true,
    double from = 100,
  }) : super(
          child: SlideInLeft(
            key: key,
            duration: duration,
            delay: delay,
            controller: controller,
            manualTrigger: manualTrigger,
            animate: animate,
            from: from,
            child: child,
          ),
        );
  Animator.slideInRight({
    super.key,
    required Widget child,
    Duration duration = const Duration(milliseconds: 600),
    Duration delay = const Duration(milliseconds: 0),
    dynamic Function(AnimationController)? controller,
    bool manualTrigger = false,
    bool animate = true,
    double from = 100,
  }) : super(
          child: SlideInRight(
            key: key,
            duration: duration,
            delay: delay,
            controller: controller,
            manualTrigger: manualTrigger,
            animate: animate,
            from: from,
            child: child,
          ),
        );

  /// FlipIn
  Animator.flipInX({
    super.key,
    required Widget child,
    Duration duration = const Duration(milliseconds: 800),
    Duration delay = const Duration(milliseconds: 0),
    dynamic Function(AnimationController)? controller,
    bool manualTrigger = false,
    bool animate = true,
  }) : super(
          child: FlipInX(
            key: key,
            duration: duration,
            delay: delay,
            controller: controller,
            manualTrigger: manualTrigger,
            animate: animate,
            child: child,
          ),
        );
  Animator.flipInY({
    super.key,
    required Widget child,
    Duration duration = const Duration(milliseconds: 800),
    Duration delay = const Duration(milliseconds: 0),
    dynamic Function(AnimationController)? controller,
    bool manualTrigger = false,
    bool animate = true,
  }) : super(
          child: FlipInY(
            key: key,
            duration: duration,
            delay: delay,
            controller: controller,
            manualTrigger: manualTrigger,
            animate: animate,
            child: child,
          ),
        );

  /// Zooms
  Animator.zoomIn({
    super.key,
    required Widget child,
    Duration duration = const Duration(milliseconds: 500),
    Duration delay = const Duration(milliseconds: 0),
    dynamic Function(AnimationController)? controller,
    bool manualTrigger = false,
    bool animate = true,
    double from = 1.0,
  }) : super(
          child: ZoomIn(
            key: key,
            duration: duration,
            delay: delay,
            controller: controller,
            manualTrigger: manualTrigger,
            animate: animate,
            from: from,
            child: child,
          ),
        );
  Animator.zoomOut({
    super.key,
    required Widget child,
    Duration duration = const Duration(milliseconds: 500),
    Duration delay = const Duration(milliseconds: 0),
    dynamic Function(AnimationController)? controller,
    bool manualTrigger = false,
    bool animate = true,
    double from = 0.0,
  }) : super(
          child: ZoomOut(
            key: key,
            duration: duration,
            delay: delay,
            controller: controller,
            manualTrigger: manualTrigger,
            animate: animate,
            from: from,
            child: child,
          ),
        );

  /// SpecialIn
  Animator.jelloIn({
    super.key,
    required Widget child,
    Duration duration = const Duration(milliseconds: 800),
    Duration delay = const Duration(milliseconds: 0),
    dynamic Function(AnimationController)? controller,
    bool manualTrigger = false,
    bool animate = true,
  }) : super(
          child: JelloIn(
            key: key,
            duration: duration,
            delay: delay,
            controller: controller,
            manualTrigger: manualTrigger,
            animate: animate,
            child: child,
          ),
        );

  /// Attention Seeker
  Animator.bounce({
    super.key,
    required Widget child,
    Duration duration = const Duration(milliseconds: 1300),
    Duration delay = const Duration(milliseconds: 0),
    bool infinite = false,
    dynamic Function(AnimationController)? controller,
    bool manualTrigger = false,
    bool animate = true,
    double from = 50,
  }) : super(
          child: Bounce(
            key: key,
            duration: duration,
            delay: delay,
            infinite: infinite,
            controller: controller,
            manualTrigger: manualTrigger,
            animate: animate,
            from: from,
            child: child,
          ),
        );
  Animator.dance({
    super.key,
    required Widget child,
    Duration duration = const Duration(milliseconds: 1000),
    Duration delay = const Duration(milliseconds: 0),
    bool infinite = false,
    dynamic Function(AnimationController)? controller,
    bool manualTrigger = false,
    bool animate = true,
  }) : super(
          child: Dance(
            key: key,
            duration: duration,
            delay: delay,
            infinite: infinite,
            controller: controller,
            manualTrigger: manualTrigger,
            animate: animate,
            child: child,
          ),
        );
  Animator.flash({
    super.key,
    required Widget child,
    Duration duration = const Duration(milliseconds: 1000),
    Duration delay = const Duration(milliseconds: 0),
    bool infinite = false,
    dynamic Function(AnimationController)? controller,
    bool manualTrigger = false,
    bool animate = true,
  }) : super(
          child: Flash(
            key: key,
            duration: duration,
            delay: delay,
            infinite: infinite,
            controller: controller,
            manualTrigger: manualTrigger,
            animate: animate,
            child: child,
          ),
        );
  Animator.pulse({
    super.key,
    required Widget child,
    Duration duration = const Duration(milliseconds: 1000),
    Duration delay = const Duration(milliseconds: 0),
    bool infinite = false,
    dynamic Function(AnimationController)? controller,
    bool manualTrigger = false,
    bool animate = true,
  }) : super(
          child: Pulse(
            key: key,
            duration: duration,
            delay: delay,
            infinite: infinite,
            controller: controller,
            manualTrigger: manualTrigger,
            animate: animate,
            child: child,
          ),
        );
  Animator.roulette({
    super.key,
    required Widget child,
    Duration duration = const Duration(milliseconds: 3500),
    Duration delay = const Duration(milliseconds: 0),
    bool infinite = false,
    dynamic Function(AnimationController)? controller,
    bool manualTrigger = false,
    bool animate = true,
    double spins = 2,
  }) : super(
          child: Roulette(
            key: key,
            duration: duration,
            delay: delay,
            infinite: infinite,
            controller: controller,
            manualTrigger: manualTrigger,
            animate: animate,
            spins: spins,
            child: child,
          ),
        );
  Animator.shakeX({
    super.key,
    required Widget child,
    Duration duration = const Duration(milliseconds: 800),
    Duration delay = const Duration(milliseconds: 0),
    bool infinite = false,
    dynamic Function(AnimationController)? controller,
    bool manualTrigger = false,
    bool animate = true,
    double from = 10,
  }) : super(
          child: ShakeX(
            key: key,
            duration: duration,
            delay: delay,
            infinite: infinite,
            controller: controller,
            manualTrigger: manualTrigger,
            animate: animate,
            from: from,
            child: child,
          ),
        );
  Animator.shakeY({
    super.key,
    required Widget child,
    Duration duration = const Duration(milliseconds: 1000),
    Duration delay = const Duration(milliseconds: 0),
    bool infinite = false,
    dynamic Function(AnimationController)? controller,
    bool manualTrigger = false,
    bool animate = true,
    double from = 80,
  }) : super(
          child: ShakeY(
            key: key,
            duration: duration,
            delay: delay,
            infinite: infinite,
            controller: controller,
            manualTrigger: manualTrigger,
            animate: animate,
            from: from,
            child: child,
          ),
        );
  Animator.spin({
    super.key,
    required Widget child,
    Duration duration = const Duration(milliseconds: 1000),
    Duration delay = const Duration(milliseconds: 0),
    bool infinite = false,
    dynamic Function(AnimationController)? controller,
    bool manualTrigger = false,
    bool animate = true,
    double spins = 1,
  }) : super(
          child: Spin(
            key: key,
            duration: duration,
            delay: delay,
            infinite: infinite,
            controller: controller,
            manualTrigger: manualTrigger,
            animate: animate,
            spins: spins,
            child: child,
          ),
        );
  Animator.spinPerfect({
    super.key,
    required Widget child,
    Duration duration = const Duration(milliseconds: 1000),
    Duration delay = const Duration(milliseconds: 0),
    bool infinite = false,
    dynamic Function(AnimationController)? controller,
    bool manualTrigger = false,
    bool animate = true,
    double spins = 1,
  }) : super(
          child: SpinPerfect(
            key: key,
            duration: duration,
            delay: delay,
            infinite: infinite,
            controller: controller,
            manualTrigger: manualTrigger,
            animate: animate,
            spins: spins,
            child: child,
          ),
        );
  Animator.swing({
    super.key,
    required Widget child,
    Duration duration = const Duration(milliseconds: 1000),
    Duration delay = const Duration(milliseconds: 0),
    bool infinite = false,
    dynamic Function(AnimationController)? controller,
    bool manualTrigger = false,
    bool animate = true,
  }) : super(
          child: Swing(
            key: key,
            duration: duration,
            delay: delay,
            infinite: infinite,
            controller: controller,
            manualTrigger: manualTrigger,
            animate: animate,
            child: child,
          ),
        );
}
