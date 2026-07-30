// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The link is a link to the Telegram Star purchase section of the
/// application
@immutable
class InternalLinkTypeStarPurchase extends InternalLinkType {
  const InternalLinkTypeStarPurchase({
    required this.starCount,
    required this.purpose,
  });

  /// [starCount] The number of Telegram Stars that must be owned by the user
  final int starCount;

  /// [purpose] Purpose of Telegram Star purchase. Arbitrary string specified by
  /// the server, for example, "subs" if the Telegram Stars are required to
  /// extend channel subscriptions
  final String purpose;

  static const String constructor = 'internalLinkTypeStarPurchase';

  static InternalLinkTypeStarPurchase? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InternalLinkTypeStarPurchase(
      starCount: json['star_count'] as int,
      purpose: json['purpose'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'star_count': starCount,
        'purpose': purpose,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is InternalLinkTypeStarPurchase &&
          const DeepCollectionEquality().equals(other.starCount, starCount) &&
          const DeepCollectionEquality().equals(other.purpose, purpose));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(starCount),
        const DeepCollectionEquality().hash(purpose)
      ]);
}
