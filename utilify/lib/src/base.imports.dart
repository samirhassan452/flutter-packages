//! imports
import 'dart:convert' show base64Decode, base64Encode, json;
import 'dart:developer' as devtools show log;
import 'dart:io' show File, InternetAddress, Platform, SocketException;
import 'dart:ui' show ViewPadding;

import 'package:flutter/foundation.dart'
    show PlatformDispatcher, Uint8List, defaultTargetPlatform, listEquals;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart'
    show
        DeviceOrientation,
        HapticFeedback,
        SystemChrome,
        SystemUiMode,
        SystemUiOverlay,
        SystemUiOverlayStyle;
import 'package:gap/gap.dart' show Gap, SliverGap;
import 'package:intl/intl.dart' show DateFormat, NumberFormat;

//! parts
//? Classes
part 'classes/range_list.dart';
//? Constants
part 'constants/date_formats.dart';
part 'constants/durations.dart';
part 'constants/regex.dart';
part 'constants/sizes.dart';
part 'constants/typedefs.dart';
//?
part 'device/device_utils.dart';
//? Enums
part 'enums/api_responses.dart';
part 'enums/auth_status.dart';
part 'enums/bloc_status.dart';
part 'enums/font_weight_types.dart';
part 'enums/log_types.dart';
part 'enums/mime_types.dart';
//? Extensions
part 'extensions/color_conversion.dart';
part 'extensions/context_conversion.dart';
part 'extensions/date_time_conversion.dart';
part 'extensions/delay_conversion.dart';
part 'extensions/generic_conversion.dart';
part 'extensions/icon_conversion.dart';
part 'extensions/iterable_conversion.dart';
part 'extensions/json_conversion.dart';
part 'extensions/log_conversion.dart';
part 'extensions/navigation_conversion.dart';
part 'extensions/num_conversion.dart';
part 'extensions/string_conversion.dart';
part 'extensions/uri_conversion.dart';
//?
part 'formatters/formatter.dart';
//?
part 'helpers/file_functions.dart';
part 'helpers/helper_functions.dart';
