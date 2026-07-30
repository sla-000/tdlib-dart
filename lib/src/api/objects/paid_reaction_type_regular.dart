// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A paid reaction on behalf of the current user
@immutable
class PaidReactionTypeRegular extends PaidReactionType {
  const PaidReactionTypeRegular();

  static const String constructor = 'paidReactionTypeRegular';

  static PaidReactionTypeRegular? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PaidReactionTypeRegular();
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType && other is PaidReactionTypeRegular);

  @override
  int get hashCode => runtimeType.hashCode;
}
