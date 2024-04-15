part of '../base.imports.dart';

class ScrollTopWidget extends StatefulWidget {
  final Widget child;
  final ScrollController scrollController;
  final Duration duration;
  final Curve curve;
  //
  final Widget Function(VoidCallback)? buttonBuilder;
  final FloatingActionButtonLocation buttonPosition;
  final Duration switchInDuration;
  final Duration switchOutDuration;
  final Curve switchInCurve;
  final Curve switchOutCurve;
  const ScrollTopWidget({
    super.key,
    required this.child,
    required this.scrollController,
    required this.duration,
    required this.curve,
    required this.buttonBuilder,
    required this.buttonPosition,
    required this.switchInDuration,
    required this.switchOutDuration,
    required this.switchInCurve,
    required this.switchOutCurve,
  });

  @override
  State<ScrollTopWidget> createState() => _ScrollTopWidgetState();
}

class _ScrollTopWidgetState extends State<ScrollTopWidget> {
  // late GlobalKey<NavigatorState> _navigatorKey;
  late ScrollController _scrollController;
  late StreamController<bool> _streamController;

  @override
  void initState() {
    super.initState();
    // _navigatorKey = GlobalKey<NavigatorState>();
    _scrollController = widget.scrollController;
    _streamController = StreamController<bool>.broadcast();

    WidgetsBinding.instance.addPostFrameCallback((_) => onListenToScroll());
  }

  @override
  void dispose() {
    _scrollController.removeListener(() {});
    _streamController.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // key: _navigatorKey,
      body: widget.child,
      floatingActionButtonLocation: widget.buttonPosition,
      floatingActionButton: StreamBuilder<bool>(
        stream: _streamController.stream,
        builder: (_, snapshot) => AnimatedSwitcher(
          duration: widget.switchInDuration,
          reverseDuration: widget.switchOutDuration,
          switchInCurve: widget.switchInCurve,
          switchOutCurve: widget.switchOutCurve,
          child: switch (snapshot.data ?? false) {
            (bool showBtn) when showBtn && widget.buttonBuilder != null =>
              IntrinsicWidth(child: widget.buttonBuilder!(onScrollToTop)),
            (bool showBtn) when showBtn && widget.buttonBuilder == null =>
              FloatingActionButton(
                onPressed: onScrollToTop,
                child: const Icon(Icons.arrow_upward),
              ),
            _ => const SizedBox()
          },
        ),
      ),
    );
  }

  void onListenToScroll() {
    if (_scrollController.hasClients) {
      _scrollController.addListener(scrollListener);
    }
  }

  void scrollListener() {
    // if (_navigatorKey.currentContext != null &&
    //     _navigatorKey.currentContext!.mounted) {
    //   onCalculateOffset(_scrollController.offset);
    // }
    if (mounted) onCalculateOffset(_scrollController.offset);
  }

  void onCalculateOffset(double offset, [double condition = 400.0]) =>
      offset >= condition
          ? _streamController.sink.add(true)
          : _streamController.sink.add(false);

  void onScrollToTop() => _scrollController.animateTo(
        0.0,
        duration: widget.duration,
        curve: widget.curve,
      );
}
