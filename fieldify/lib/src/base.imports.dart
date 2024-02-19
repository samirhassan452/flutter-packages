//! imports
import 'dart:ui' show BoxHeightStyle, BoxWidthStyle;

import 'package:abstractor/abstractor.dart';
import 'package:collection/collection.dart' show DeepCollectionEquality;
import 'package:flutter/gestures.dart' show DragStartBehavior;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart'
    show FilteringTextInputFormatter, MaxLengthEnforcement, TextInputFormatter;
import 'package:widgey/widgey.dart' show AsteriskPosition, Widgey;

//! parts
part '_base_/base.widget.dart';
part 'styles/fieldify.dart';
part 'utils/label_behaviors.dart';
part 'utils/typedefs.dart';
part 'widgets/fieldify.widget.dart';
