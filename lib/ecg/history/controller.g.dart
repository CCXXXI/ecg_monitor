// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'controller.dart';

// **************************************************************************
// FunctionalWidgetGenerator
// **************************************************************************

class HistoryController extends StatelessWidget {
  const HistoryController(
    this.time, {
    Key? key,
  }) : super(key: key);

  final DateTime time;

  @override
  Widget build(BuildContext _context) => _historyController(
        _context,
        time,
      );
  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<DateTime>('time', time));
  }
}
