import "package:flutter/material.dart";
import "package:functional_widget_annotation/functional_widget_annotation.dart";

import "../generated/l10n.dart";
import "data_types.dart";

part "analytics.g.dart";

// todo: read from database
int _labelCount(Label label) => 0;

@swidget
Widget analytics(BuildContext context) {
  final s = S.of(context);

  return ListView(
    children: [
      ListTile(
        title: Text(s.sinusRhythm),
        trailing: Text(_labelCount(Label.sinusRhythm).toString()),
      ),
      ListTile(
        title: Text(s.atrialPrematureBeat),
        trailing: Text(_labelCount(Label.atrialPrematureBeat).toString()),
      ),
      ListTile(
        title: Text(s.atrialFlutter),
        trailing: Text(_labelCount(Label.atrialFlutter).toString()),
      ),
      ListTile(
        title: Text(s.atrialFibrillation),
        trailing: Text(_labelCount(Label.atrialFibrillation).toString()),
      ),
      ListTile(
        title: Text(s.ventricularPrematureBeat),
        trailing: Text(_labelCount(Label.ventricularPrematureBeat).toString()),
      ),
      ListTile(
        title: Text(s.paroxysmalSupraVentricularTachycardia),
        trailing: Text(_labelCount(Label.paroxysmalSupraVentricularTachycardia)
            .toString()),
      ),
      ListTile(
        title: Text(s.ventricularPreExcitation),
        trailing: Text(_labelCount(Label.ventricularPreExcitation).toString()),
      ),
      ListTile(
        title: Text(s.ventricularFlutterAndFibrillation),
        trailing: Text(
            _labelCount(Label.ventricularFlutterAndFibrillation).toString()),
      ),
      ListTile(
        title: Text(s.atrioventricularBlock),
        trailing: Text(_labelCount(Label.atrioventricularBlock).toString()),
      ),
      ListTile(
        title: Text(s.noise),
        trailing: Text(_labelCount(Label.noise).toString()),
      ),
      ListTile(
        title: Text(s.unknown),
        trailing: Text(_labelCount(Label.unknown).toString()),
      ),
    ],
  );
}
