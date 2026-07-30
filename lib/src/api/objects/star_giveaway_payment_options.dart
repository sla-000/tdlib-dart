// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Contains a list of options for creating of Telegram Star giveaway
@immutable
class StarGiveawayPaymentOptions extends TdObject {
  const StarGiveawayPaymentOptions({
    required this.options,
  });

  /// [options] The list of options
  final List<StarGiveawayPaymentOption> options;

  static const String constructor = 'starGiveawayPaymentOptions';

  static StarGiveawayPaymentOptions? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StarGiveawayPaymentOptions(
      options: List<StarGiveawayPaymentOption>.from(
          ((json['options'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => StarGiveawayPaymentOption.fromJson(item))
              .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'options': options.map((item) => item.toJson()).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is StarGiveawayPaymentOptions &&
          const DeepCollectionEquality().equals(other.options, options));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(options)]);
}
