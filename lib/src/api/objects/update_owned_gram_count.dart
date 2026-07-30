// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The number of TON Grams owned by the current user has changed
@immutable
class UpdateOwnedGramCount extends Update {
  const UpdateOwnedGramCount({
    required this.gramAmount,
  });

  /// [gramAmount] The new amount of owned Grams; in the smallest units of the
  /// cryptocurrency
  final int gramAmount;

  static const String constructor = 'updateOwnedGramCount';

  static UpdateOwnedGramCount? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateOwnedGramCount(
      gramAmount: (json['gram_amount'] as int?) ?? 0,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'gram_amount': gramAmount,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is UpdateOwnedGramCount &&
          const DeepCollectionEquality().equals(other.gramAmount, gramAmount));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(gramAmount)]);
}
