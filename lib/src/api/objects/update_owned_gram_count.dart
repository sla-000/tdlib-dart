import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
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
      gramAmount: json['gram_amount'] as int,
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
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
