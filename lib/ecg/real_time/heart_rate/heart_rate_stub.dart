import "package:flutter/material.dart";

import "../../../utils/constants/strings.dart" as str;

class HeartRateWidget extends StatelessWidget {
  const HeartRateWidget({super.key});

  @override
  Widget build(BuildContext context) =>
      const Text(str.heartRateNotAvailableOnWeb);
}
