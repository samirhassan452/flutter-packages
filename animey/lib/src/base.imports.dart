//! imports
import 'package:abstractor/abstractor.dart';
import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:loading_indicator/loading_indicator.dart'
    show Indicator, LoadingIndicator;
import 'package:shimmer_animation/shimmer_animation.dart'
    show Shimmer, ShimmerDirection;

//! exports
export 'package:loading_indicator/loading_indicator.dart' show Indicator;

//! parts
part '_base_/base.widget.dart';
//?
part 'utils/animey_type.dart';
part 'utils/fade_in_types.dart';
//?
part 'widgets/fade_in.widget.dart';
part 'widgets/loading.widget.dart';
part 'widgets/shimmer.widget.dart';
