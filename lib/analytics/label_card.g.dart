// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'label_card.dart';

// **************************************************************************
// FunctionalWidgetGenerator
// **************************************************************************

class LabelCard extends StatelessWidget {
  const LabelCard(
    this.label,
    this.count, {
    Key? key,
  }) : super(key: key);

  final Label label;

  final int? count;

  @override
  Widget build(BuildContext _context) => _labelCard(
        label,
        count,
      );
  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(EnumProperty<Label>('label', label));
    properties.add(DiagnosticsProperty<int?>('count', count));
  }
}
