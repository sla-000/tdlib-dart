// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Contains information about a post to suggest
@immutable
class InputSuggestedPostInfo extends TdObject {
  const InputSuggestedPostInfo({
    this.price,
    required this.sendDate,
  });

  /// [price] Price of the suggested post; pass null to suggest a post without
  /// payment. If the current user isn't an administrator of the channel direct
  /// messages chat and has no enough funds to pay for the post, then the error
  /// "BALANCE_TOO_LOW" will be returned immediately
  final SuggestedPostPrice? price;

  /// [sendDate] Point in time (Unix timestamp) when the post is expected to be
  /// published; pass 0 if the date isn't restricted. If specified, then the
  /// date must be
  /// getOption("suggested_post_send_delay_min")-getOption("suggested_post_send_delay_max")
  /// seconds in the future
  final int sendDate;

  static const String constructor = 'inputSuggestedPostInfo';

  static InputSuggestedPostInfo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputSuggestedPostInfo(
      price:
          SuggestedPostPrice.fromJson(json['price'] as Map<String, dynamic>?),
      sendDate: json['send_date'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'price': price?.toJson(),
        'send_date': sendDate,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is InputSuggestedPostInfo &&
          const DeepCollectionEquality().equals(other.price, price) &&
          const DeepCollectionEquality().equals(other.sendDate, sendDate));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(price),
        const DeepCollectionEquality().hash(sendDate)
      ]);
}
