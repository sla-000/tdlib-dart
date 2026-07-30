// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The ability to show an emoji status along with the business name
@immutable
class BusinessFeatureEmojiStatus extends BusinessFeature {
  const BusinessFeatureEmojiStatus();

  static const String constructor = 'businessFeatureEmojiStatus';

  static BusinessFeatureEmojiStatus? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const BusinessFeatureEmojiStatus();
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
      (other.runtimeType == runtimeType && other is BusinessFeatureEmojiStatus);

  @override
  int get hashCode => runtimeType.hashCode;
}
