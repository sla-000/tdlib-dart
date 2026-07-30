// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Changes settings for gift receiving of a business account; for bots only
/// Returns [Ok]
@immutable
class SetBusinessAccountGiftSettings extends TdFunction {
  const SetBusinessAccountGiftSettings({
    required this.businessConnectionId,
    required this.settings,
  });

  /// [businessConnectionId] Unique identifier of business connection
  final String businessConnectionId;

  /// [settings] The new settings
  final GiftSettings settings;

  static const String constructor = 'setBusinessAccountGiftSettings';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'business_connection_id': businessConnectionId,
        'settings': settings.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is SetBusinessAccountGiftSettings &&
          const DeepCollectionEquality()
              .equals(other.businessConnectionId, businessConnectionId) &&
          const DeepCollectionEquality().equals(other.settings, settings));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(businessConnectionId),
        const DeepCollectionEquality().hash(settings)
      ]);
}
