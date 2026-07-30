// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Changes settings for gift receiving for the current user
/// Returns [Ok]
@immutable
class SetGiftSettings extends TdFunction {
  const SetGiftSettings({
    required this.settings,
  });

  /// [settings] The new settings
  final GiftSettings settings;

  static const String constructor = 'setGiftSettings';

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
          other is SetGiftSettings &&
          const DeepCollectionEquality().equals(other.settings, settings));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(settings)]);
}
