// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns examples of premium stickers for demonstration purposes
/// Returns [Stickers]
@immutable
class GetPremiumStickerExamples extends TdFunction {
  const GetPremiumStickerExamples();

  static const String constructor = 'getPremiumStickerExamples';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType && other is GetPremiumStickerExamples);

  @override
  int get hashCode => runtimeType.hashCode;
}
