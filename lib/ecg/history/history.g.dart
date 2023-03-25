// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'history.dart';

// **************************************************************************
// FunctionalWidgetGenerator
// **************************************************************************

class History extends ConsumerWidget {
  const History(
    this.time, {
    Key? key,
  }) : super(key: key);

  final DateTime time;

  @override
  Widget build(
    BuildContext _context,
    WidgetRef _ref,
  ) =>
      history(
        _ref,
        time,
      );
  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<DateTime>('time', time));
  }
}
