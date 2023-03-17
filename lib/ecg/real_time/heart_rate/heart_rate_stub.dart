import "package:flutter/material.dart";
import "package:functional_widget_annotation/functional_widget_annotation.dart";

import "../../../utils/constants/strings.dart" as str;

part "heart_rate_stub.g.dart";

@swidget
Widget _heartRateWidget() => const Text(str.heartRateNotAvailableOnWeb);
