import "package:flutter/material.dart";
import "package:functional_widget_annotation/functional_widget_annotation.dart";

import "../../../generated/l10n.dart";

part "heart_rate_stub.g.dart";

@swidget
Widget _heartRateWidget(BuildContext context) {
  final s = S.of(context);

  return Text(s.heartRateNotAvailableOnWeb);
}
