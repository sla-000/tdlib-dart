// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Describes type of paid message reaction
@immutable
abstract class PaidReactionType extends TdObject {
  const PaidReactionType();

  static const String constructor = 'paidReactionType';

  /// Inherited by:
  /// [PaidReactionTypeAnonymous]
  /// [PaidReactionTypeChat]
  /// [PaidReactionTypeRegular]
  static PaidReactionType? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case PaidReactionTypeAnonymous.constructor:
        return PaidReactionTypeAnonymous.fromJson(json);
      case PaidReactionTypeChat.constructor:
        return PaidReactionTypeChat.fromJson(json);
      case PaidReactionTypeRegular.constructor:
        return PaidReactionTypeRegular.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => constructor;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType && other is PaidReactionType);

  @override
  int get hashCode => runtimeType.hashCode;
}
