// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns privacy settings for message read date
/// Returns [ReadDatePrivacySettings]
@immutable
class GetReadDatePrivacySettings extends TdFunction {
  const GetReadDatePrivacySettings();

  static const String constructor = 'getReadDatePrivacySettings';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType && other is GetReadDatePrivacySettings);

  @override
  int get hashCode => runtimeType.hashCode;
}
