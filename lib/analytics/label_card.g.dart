// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'label_card.dart';

// **************************************************************************
// FunctionalWidgetGenerator
// **************************************************************************

class LabelCard extends StatelessWidget {
  const LabelCard(
    this.label,
    this.count,
    this.onTap, {
    Key? key,
  }) : super(key: key);

  final Label label;

  final int? count;

  final void Function() onTap;

  @override
  Widget build(BuildContext _context) => _labelCard(
        _context,
        label,
        count,
        onTap,
      );
  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(EnumProperty<Label>('label', label));
    properties.add(DiagnosticsProperty<int?>('count', count));
    properties.add(DiagnosticsProperty<void Function()>('onTap', onTap));
  }
}
