// Portions of this work are Copyright 2018 The Time Machine Authors. All rights reserved.
// Portions of this work are Copyright 2018 The Noda Time Authors. All rights reserved.
// Use of this source code is governed by the Apache License 2.0, as found in the LICENSE.txt file.
import 'dart:async';

import 'package:time_machine/time_machine.dart';
import 'package:time_machine/time_machine_calendars.dart';
import 'package:time_machine/time_machine_utilities.dart';

import 'package:test/test.dart';
import 'package:matcher/matcher.dart';
import 'package:time_machine/time_machine_timezones.dart';

import 'testing/timezones/single_transition_datetimezone.dart';
import 'testing/timezones/multi_transition_datetimezone.dart';
import 'time_machine_testing.dart';

Future main() async {
  await runTests();
}

/// Tests for code in DateTimeZone and code which will be moving out
/// of DateTimeZones into DateTimeZone over time.
@Test()
void UtcIsNotNull()
{
  expect(DateTimeZone.utc, isNotNull);
}

