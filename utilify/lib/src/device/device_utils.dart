part of '../base.imports.dart';

// abstract: cannot be instantiate
// final: cannot be inherited and implemented
//! U: Utilify
abstract final class UDeviceUtils {
  //? Private constructor
  UDeviceUtils._();

  double get bottomNavigationBarHeight => kBottomNavigationBarHeight;

  double get appBarHeight => kToolbarHeight;

  static Future<void> setFullScreen(bool enable) async {
    await SystemChrome.setEnabledSystemUIMode(
      enable ? SystemUiMode.immersiveSticky : SystemUiMode.edgeToEdge,
      // overlays: enable ? [SystemUiOverlay.top] : [],
    );
  }

  static Future<bool> isPhysicalDevice() async {
    return defaultTargetPlatform == TargetPlatform.android ||
        defaultTargetPlatform == TargetPlatform.iOS;
  }

  static bool isAndroid() => Platform.isAndroid;
  static bool isIOS() => Platform.isIOS;

  static Future<void> vibrate(Duration duration) async {
    await HapticFeedback.vibrate();
    Future.delayed(duration, () async => await HapticFeedback.vibrate());
  }

  static Future<void> setPreferredOrientations(
    List<DeviceOrientation> orientations,
  ) async {
    await SystemChrome.setPreferredOrientations(orientations);
  }

  static Future<void> hideStatusBar() async {
    await SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.manual,
      overlays: [],
    );
  }

  static Future<void> showStatusBar() async {
    await SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.manual,
      overlays: SystemUiOverlay.values,
    );
  }

  static Future<bool> hasInternetConnection() async {
    try {
      final List<InternetAddress> result =
          await InternetAddress.lookup('google.com');
      final bool isNotEmpty =
          result.isNotEmpty && result[0].rawAddress.isNotEmpty;
      return Future.value(isNotEmpty);
    } on SocketException catch (_) {
      return Future.value(false);
    }
  }

  /* static Future<void> launchUrl(String url) async {
    if (await canLaunchUrlString(url)) {
      await launchUrlString(url);
    } else {
      throw 'Could not launch $url';
    }
  } */
}
