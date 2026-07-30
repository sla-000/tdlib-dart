// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The maximum length of sent media caption
@immutable
class PremiumLimitTypeCaptionLength extends PremiumLimitType {
  const PremiumLimitTypeCaptionLength();

  static const String constructor = 'premiumLimitTypeCaptionLength';

  static PremiumLimitTypeCaptionLength? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PremiumLimitTypeCaptionLength();
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is PremiumLimitTypeCaptionLength);

  @override
  int get hashCode => runtimeType.hashCode;
}
