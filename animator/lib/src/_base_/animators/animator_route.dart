part of '../base.imports.dart';

class AnimatorRoute<T> extends PageRouteBuilder<T> {
  ///
  AnimatorRoute.sliderRight({Key? key, required Widget page})
      : super(
          transitionDuration: const Duration(milliseconds: 250),
          reverseTransitionDuration: const Duration(milliseconds: 250),
          pageBuilder: (context, fAnimation, sAnimation) => page,
          transitionsBuilder: (context, fAnimation, sAnimation, child) {
            const begin = Offset(1.0, 0.0);
            const end = Offset.zero;
            final tween = Tween<Offset>(begin: begin, end: end);
            final offsetAnimation = fAnimation.drive(tween);
            return SlideTransition(
              key: key,
              position: offsetAnimation,
              child: child,
            );
          },
        );

  ///
  AnimatorRoute.sliderUp({Key? key, required Widget page})
      : super(
          transitionDuration: const Duration(milliseconds: 500),
          reverseTransitionDuration: const Duration(milliseconds: 500),
          pageBuilder: (context, fAnimation, sAnimation) => page,
          transitionsBuilder: (context, fAnimation, sAnimation, child) {
            const begin = Offset(0.0, 1.0);
            const end = Offset.zero;
            final tween = Tween<Offset>(begin: begin, end: end);
            final curvedAnimation = CurvedAnimation(
              parent: fAnimation,
              curve: Curves.linearToEaseOut,
            );
            return SlideTransition(
              key: key,
              position: tween.animate(curvedAnimation),
              child: child,
            );
          },
        );

  ///
  AnimatorRoute.scale({Key? key, required Widget page})
      : super(
          transitionDuration: const Duration(milliseconds: 500),
          reverseTransitionDuration: const Duration(milliseconds: 500),
          pageBuilder: (context, fAnimation, sAnimation) => page,
          transitionsBuilder: (context, fAnimation, sAnimation, child) {
            const begin = 0.0;
            const end = 1.0;
            final tween = Tween<double>(begin: begin, end: end);
            final curvedAnimation =
                CurvedAnimation(parent: fAnimation, curve: Curves.easeInBack);
            return ScaleTransition(
              key: key,
              scale: tween.animate(curvedAnimation),
              child: child,
            );
          },
        );

  ///
  AnimatorRoute.rotate({Key? key, required Widget page})
      : super(
          transitionDuration: const Duration(milliseconds: 500),
          reverseTransitionDuration: const Duration(milliseconds: 500),
          pageBuilder: (context, fAnimation, sAnimation) => page,
          transitionsBuilder: (context, fAnimation, sAnimation, child) {
            const begin = 0.0;
            const end = 1.0;
            final tween = Tween<double>(begin: begin, end: end);
            final curvedAnimation =
                CurvedAnimation(parent: fAnimation, curve: Curves.linear);
            return RotationTransition(
              key: key,
              turns: tween.animate(curvedAnimation),
              child: child,
            );
          },
        );

  ///
  AnimatorRoute.size({Key? key, required Widget page})
      : super(
          transitionDuration: const Duration(milliseconds: 500),
          reverseTransitionDuration: const Duration(milliseconds: 500),
          pageBuilder: (context, fAnimation, sAnimation) => page,
          transitionsBuilder: (context, fAnimation, sAnimation, child) {
            return SizeTransition(
              key: key,
              sizeFactor: fAnimation,
              child: child,
            );
          },
        );

  ///
  AnimatorRoute.fade({Key? key, required Widget page})
      : super(
          transitionDuration: const Duration(milliseconds: 200),
          reverseTransitionDuration: const Duration(milliseconds: 200),
          pageBuilder: (context, fAnimation, sAnimation) => page,
          transitionsBuilder: (context, fAnimation, sAnimation, child) {
            return FadeTransition(
              key: key,
              opacity: fAnimation,
              child: child,
            );
          },
        );

  ///
  AnimatorRoute.scaleRotate({Key? key, required Widget page})
      : super(
          transitionDuration: const Duration(milliseconds: 2500),
          reverseTransitionDuration: const Duration(milliseconds: 2500),
          pageBuilder: (context, fAnimation, sAnimation) => page,
          transitionsBuilder: (context, fAnimation, sAnimation, child) {
            const begin = 0.0;
            const end = 1.0;
            final tween = Tween<double>(begin: begin, end: end);
            final curvedAnimation =
                CurvedAnimation(parent: fAnimation, curve: Curves.linear);
            return ScaleTransition(
              key: key,
              scale: tween.animate(curvedAnimation),
              child: RotationTransition(
                turns: tween.animate(curvedAnimation),
                child: child,
              ),
            );
          },
        );
}
