// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The maximum length of captions of posted stories
@immutable
class PremiumLimitTypeStoryCaptionLength extends PremiumLimitType {
  const PremiumLimitTypeStoryCaptionLength();

  static const String constructor = 'premiumLimitTypeStoryCaptionLength';

  static PremiumLimitTypeStoryCaptionLength? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PremiumLimitTypeStoryCaptionLength();
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
          other is PremiumLimitTypeStoryCaptionLength);

  @override
  int get hashCode => runtimeType.hashCode;
}
