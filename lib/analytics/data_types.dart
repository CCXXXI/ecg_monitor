import "package:freezed_annotation/freezed_annotation.dart";

import "../generated/l10n.dart";

part "data_types.freezed.dart";

enum Label {
  /// 窦性心律
  /// Sinus rhythm
  sinusRhythm,

  /// 房性早搏
  /// Atrial premature beat
  atrialPrematureBeat,

  /// 心房扑动
  /// Atrial flutter
  atrialFlutter,

  /// 心房颤动
  /// Atrial fibrillation
  atrialFibrillation,

  /// 室性早搏
  /// Ventricular premature beat
  ventricularPrematureBeat,

  /// 阵发性室上性心动过速
  /// Paroxysmal supra-ventricular tachycardia
  paroxysmalSupraVentricularTachycardia,

  /// 心室预激
  /// Ventricular pre-excitation
  ventricularPreExcitation,

  /// 室扑室颤
  /// Ventricular flutter and fibrillation
  ventricularFlutterAndFibrillation,

  /// 房室传导阻滞
  /// Atrioventricular block
  atrioventricularBlock,

  /// 噪声
  /// Noise
  noise,

  /// 未知
  /// Unknown
  unknown,
  ;

  String name(S s) {
    switch (this) {
      case Label.sinusRhythm:
        return s.sinusRhythm;
      case Label.atrialPrematureBeat:
        return s.atrialPrematureBeat;
      case Label.atrialFlutter:
        return s.atrialFlutter;
      case Label.atrialFibrillation:
        return s.atrialFibrillation;
      case Label.ventricularPrematureBeat:
        return s.ventricularPrematureBeat;
      case Label.paroxysmalSupraVentricularTachycardia:
        return s.paroxysmalSupraVentricularTachycardia;
      case Label.ventricularPreExcitation:
        return s.ventricularPreExcitation;
      case Label.ventricularFlutterAndFibrillation:
        return s.ventricularFlutterAndFibrillation;
      case Label.atrioventricularBlock:
        return s.atrioventricularBlock;
      case Label.noise:
        return s.noise;
      case Label.unknown:
        return s.unknown;
    }
  }
}

@freezed
class BeatData with _$BeatData {
  const factory BeatData({
    required DateTime time,
    required Label label,
  }) = _BeatData;
}
