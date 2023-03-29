// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'controller.dart';

// **************************************************************************
// FunctionalWidgetGenerator
// **************************************************************************

class AnalyticsController extends StatelessWidget {
  const AnalyticsController(
    this.start,
    this.end, {
    Key? key,
  }) : super(key: key);

  final DateTime start;

  final DateTime end;

  @override
  Widget build(BuildContext _context) => _analyticsController(
        _context,
        start,
        end,
      );
  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<DateTime>('start', start));
    properties.add(DiagnosticsProperty<DateTime>('end', end));
  }
}
