// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Describes an affiliate program that was connected to an affiliate
@immutable
class ConnectedAffiliateProgram extends TdObject {
  const ConnectedAffiliateProgram({
    required this.url,
    required this.botUserId,
    required this.parameters,
    required this.connectionDate,
    required this.isDisconnected,
    required this.userCount,
    required this.revenueStarCount,
  });

  /// [url] The link that can be used to refer users if the program is still
  /// active
  final String url;

  /// [botUserId] User identifier of the bot created the program
  final int botUserId;

  /// [parameters] The parameters of the affiliate program
  final AffiliateProgramParameters parameters;

  /// [connectionDate] Point in time (Unix timestamp) when the affiliate program
  /// was connected
  final int connectionDate;

  /// [isDisconnected] True, if the program was canceled by the bot, or
  /// disconnected by the chat owner and isn't available anymore
  final bool isDisconnected;

  /// [userCount] The number of users that used the affiliate program
  final int userCount;

  /// [revenueStarCount] The number of Telegram Stars that were earned by the
  /// affiliate program
  final int revenueStarCount;

  static const String constructor = 'connectedAffiliateProgram';

  static ConnectedAffiliateProgram? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ConnectedAffiliateProgram(
      url: json['url'] as String,
      botUserId: json['bot_user_id'] as int,
      parameters: AffiliateProgramParameters.fromJson(
          json['parameters'] as Map<String, dynamic>?)!,
      connectionDate: json['connection_date'] as int,
      isDisconnected: json['is_disconnected'] as bool,
      userCount: int.tryParse(json['user_count']) ?? 0,
      revenueStarCount: json['revenue_star_count'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'url': url,
        'bot_user_id': botUserId,
        'parameters': parameters.toJson(),
        'connection_date': connectionDate,
        'is_disconnected': isDisconnected,
        'user_count': userCount.toString(),
        'revenue_star_count': revenueStarCount,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is ConnectedAffiliateProgram &&
          const DeepCollectionEquality().equals(other.url, url) &&
          const DeepCollectionEquality().equals(other.botUserId, botUserId) &&
          const DeepCollectionEquality().equals(other.parameters, parameters) &&
          const DeepCollectionEquality()
              .equals(other.connectionDate, connectionDate) &&
          const DeepCollectionEquality()
              .equals(other.isDisconnected, isDisconnected) &&
          const DeepCollectionEquality().equals(other.userCount, userCount) &&
          const DeepCollectionEquality()
              .equals(other.revenueStarCount, revenueStarCount));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(url),
        const DeepCollectionEquality().hash(botUserId),
        const DeepCollectionEquality().hash(parameters),
        const DeepCollectionEquality().hash(connectionDate),
        const DeepCollectionEquality().hash(isDisconnected),
        const DeepCollectionEquality().hash(userCount),
        const DeepCollectionEquality().hash(revenueStarCount)
      ]);
}
