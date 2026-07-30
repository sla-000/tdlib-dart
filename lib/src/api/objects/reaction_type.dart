// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Describes type of message reaction
@immutable
abstract class ReactionType extends TdObject {
  const ReactionType();

  static const String constructor = 'reactionType';

  /// Inherited by:
  /// [ReactionTypeCustomEmoji]
  /// [ReactionTypeEmoji]
  /// [ReactionTypePaid]
  static ReactionType? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case ReactionTypeCustomEmoji.constructor:
        return ReactionTypeCustomEmoji.fromJson(json);
      case ReactionTypeEmoji.constructor:
        return ReactionTypeEmoji.fromJson(json);
      case ReactionTypePaid.constructor:
        return ReactionTypePaid.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => constructor;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType && other is ReactionType);

  @override
  int get hashCode => runtimeType.hashCode;
}
