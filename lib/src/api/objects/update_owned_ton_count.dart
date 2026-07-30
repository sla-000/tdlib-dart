// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The number of Toncoins owned by the current user has changed
@immutable
class UpdateOwnedTonCount extends Update {
  const UpdateOwnedTonCount({
    required this.tonAmount,
  });

  /// [tonAmount] The new amount of owned Toncoins; in the smallest units of the
  /// cryptocurrency
  final int tonAmount;

  static const String constructor = 'updateOwnedTonCount';

  static UpdateOwnedTonCount? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateOwnedTonCount(
      tonAmount: (json['ton_amount'] as int?) ?? 0,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'ton_amount': tonAmount,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is UpdateOwnedTonCount &&
          const DeepCollectionEquality().equals(other.tonAmount, tonAmount));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(tonAmount)]);
}
