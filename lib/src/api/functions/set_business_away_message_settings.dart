// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Changes the business away message settings of the current user. Requires
/// Telegram Business subscription
/// Returns [Ok]
@immutable
class SetBusinessAwayMessageSettings extends TdFunction {
  const SetBusinessAwayMessageSettings({
    this.awayMessageSettings,
  });

  /// [awayMessageSettings] The new settings for the away message of the
  /// business; pass null to disable the away message
  final BusinessAwayMessageSettings? awayMessageSettings;

  static const String constructor = 'setBusinessAwayMessageSettings';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'away_message_settings': awayMessageSettings?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is SetBusinessAwayMessageSettings &&
          const DeepCollectionEquality()
              .equals(other.awayMessageSettings, awayMessageSettings));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(awayMessageSettings)]);
}
