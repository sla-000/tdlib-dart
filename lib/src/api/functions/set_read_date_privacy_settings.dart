// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Changes privacy settings for message read date
/// Returns [Ok]
@immutable
class SetReadDatePrivacySettings extends TdFunction {
  const SetReadDatePrivacySettings({
    required this.settings,
  });

  /// [settings] New settings
  final ReadDatePrivacySettings settings;

  static const String constructor = 'setReadDatePrivacySettings';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'settings': settings.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is SetReadDatePrivacySettings &&
          const DeepCollectionEquality().equals(other.settings, settings));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(settings)]);
}
