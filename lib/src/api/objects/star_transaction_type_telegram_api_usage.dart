// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The transaction is a payment for Telegram API usage; relevant for bots
/// only
@immutable
class StarTransactionTypeTelegramApiUsage extends StarTransactionType {
  const StarTransactionTypeTelegramApiUsage({
    required this.requestCount,
  });

  /// [requestCount] The number of billed requests
  final int requestCount;

  static const String constructor = 'starTransactionTypeTelegramApiUsage';

  static StarTransactionTypeTelegramApiUsage? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StarTransactionTypeTelegramApiUsage(
      requestCount: (json['request_count'] as int?) ?? 0,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'request_count': requestCount,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is StarTransactionTypeTelegramApiUsage &&
          const DeepCollectionEquality()
              .equals(other.requestCount, requestCount));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(requestCount)]);
}
