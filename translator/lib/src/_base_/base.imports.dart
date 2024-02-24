//! imports
import 'dart:convert' show json;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:intl/intl.dart' as intl;
import 'package:intl/intl_standalone.dart' show findSystemLocale;
import 'package:shared_preferences/shared_preferences.dart'
    show SharedPreferences;

import '../l10n/generated/app_localizations.dart';

//! parts
part 'logic/controller.dart';
part 'logic/notifier.dart';
part 'logic/shared_prefs.dart';
//?
part 'utils/conversions.dart';
part 'utils/typedefs.dart';
//?
part 'widgets/base.widget.dart';
