// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Describes a connection of a bot to an account
@immutable
class BusinessConnectedBotInfo extends TdObject {
  const BusinessConnectedBotInfo({
    required this.bot,
    required this.connectionDate,
    required this.deviceModel,
    required this.location,
  });

  /// [bot] Information about the bot
  final BusinessConnectedBot bot;

  /// [connectionDate] Point in time (Unix timestamp) when the bot was added;
  /// may be 0 if unknown
  final int connectionDate;

  /// [deviceModel] Model of the device that was used for the bot connection, as
  /// provided by the application; may be empty if unknown
  final String deviceModel;

  /// [location] A human-readable description of the location from which the bot
  /// was connected, based on the IP address; may be empty if unknown
  final String location;

  static const String constructor = 'businessConnectedBotInfo';

  static BusinessConnectedBotInfo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return BusinessConnectedBotInfo(
      bot: BusinessConnectedBot.fromJson(json['bot'] as Map<String, dynamic>?)!,
      connectionDate: json['connection_date'] as int,
      deviceModel: json['device_model'] as String,
      location: json['location'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'bot': bot.toJson(),
        'connection_date': connectionDate,
        'device_model': deviceModel,
        'location': location,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is BusinessConnectedBotInfo &&
          const DeepCollectionEquality().equals(other.bot, bot) &&
          const DeepCollectionEquality()
              .equals(other.connectionDate, connectionDate) &&
          const DeepCollectionEquality()
              .equals(other.deviceModel, deviceModel) &&
          const DeepCollectionEquality().equals(other.location, location));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(bot),
        const DeepCollectionEquality().hash(connectionDate),
        const DeepCollectionEquality().hash(deviceModel),
        const DeepCollectionEquality().hash(location)
      ]);
}
