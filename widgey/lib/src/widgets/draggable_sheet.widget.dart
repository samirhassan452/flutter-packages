part of '../base.imports.dart';

//!
class DraggableSheetWidget extends StatelessWidget {
  final DraggableScrollableController? draggableController;
  final double initialHeight;
  final double minHeight;
  final double maxHeight;
  final bool expand;
  final bool shouldCloseOnMinExtent;
  //
  final Color backgroundColor;
  final bool showClose;
  final VoidCallback? onClose;
  final bool isHeaderSticky;
  final double headerHeight;
  final Widget? header;
  final Widget? bottomNavigationBar;
  final EdgeInsetsGeometry? bottomNavBarPadding;

  DraggableSheetWidget({
    super.key,
    this.draggableController,
    this.initialHeight = 0.45,
    this.minHeight = 0.40,
    this.maxHeight = 0.90,
    this.expand = false,
    this.shouldCloseOnMinExtent = true,
    this.backgroundColor = Colors.transparent,
    this.showClose = true,
    this.onClose,
    this.isHeaderSticky = true,
    this.headerHeight = 0.0,
    this.header,
    ScrollPhysics? physics,
    EdgeInsetsGeometry padding = EdgeInsets.zero,
    List<Widget> children = const [],
    this.bottomNavigationBar,
    this.bottomNavBarPadding,
  }) : builder = ((context, controller) => ListView(
              controller: controller,
              physics: physics,
              padding: padding,
              children: children,
            ));

  const DraggableSheetWidget.builder({
    super.key,
    this.draggableController,
    this.initialHeight = 0.45,
    this.minHeight = 0.40,
    this.maxHeight = 0.90,
    this.expand = false,
    this.shouldCloseOnMinExtent = true,
    this.backgroundColor = Colors.transparent,
    this.showClose = true,
    this.onClose,
    this.isHeaderSticky = true,
    this.headerHeight = 0.0,
    this.header,
    required this.builder,
    this.bottomNavigationBar,
    this.bottomNavBarPadding,
  });

  final Widget Function(BuildContext, ScrollController) builder;

  @override
  Widget build(BuildContext context) {
    final double bottomPadding =
        (context.bottomPadding == 0.0 ? 102.0 : context.bottomPadding) / 3.25;

    return DraggableScrollableSheet(
      controller: draggableController,
      initialChildSize: initialHeight,
      minChildSize: minHeight,
      maxChildSize: maxHeight,
      expand: expand,
      shouldCloseOnMinExtent: shouldCloseOnMinExtent,
      builder: (_, scrollableController) => Scaffold(
        backgroundColor: backgroundColor,
        body: NestedScrollView(
          physics: const NeverScrollableScrollPhysics(),
          headerSliverBuilder: (_, __) => [
            SliverAppBar(
              backgroundColor: Colors.transparent,
              automaticallyImplyLeading: false,
              pinned: true,
              floating: true,
              toolbarHeight: 0.0,
              expandedHeight: 0.0,
              collapsedHeight: showClose ? 60.0 : 0.0,
              scrolledUnderElevation: 0.0,
              flexibleSpace: _CloseButton(onClose: onClose),
            ),
            SliverAppBar(
              backgroundColor: Colors.transparent,
              automaticallyImplyLeading: false,
              pinned: isHeaderSticky,
              floating: isHeaderSticky,
              toolbarHeight: 0.0,
              expandedHeight: 0.0,
              collapsedHeight: headerHeight,
              scrolledUnderElevation: 0.0,
              flexibleSpace: header,
            ),
          ],
          body: builder(context, scrollableController),
        ),
        bottomNavigationBar: Padding(
          padding: bottomNavBarPadding ??
              const EdgeInsets.all(24.0).copyWith(
                // bottom: WidgetsBinding.instance.window.padding.bottom / 2.25,
                //? Almost (102 & _bottomPadding) / 3,25 = 31.384615384615383
                bottom: bottomPadding,
              ),
          child: bottomNavigationBar,
        ),
      ),
    );
  }
}

//!
class _CloseButton extends StatelessWidget {
  final VoidCallback? onClose;
  const _CloseButton({this.onClose});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Align(
        alignment: AlignmentDirectional.bottomEnd,
        child: CloseButton(
          onPressed: onClose ?? context.popDialog,
          style: IconButton.styleFrom(
            minimumSize: const Size.square(45.0),
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          ),
        ),
      ),
    );
  }
}
