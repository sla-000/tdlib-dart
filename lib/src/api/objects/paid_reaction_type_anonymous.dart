// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// An anonymous paid reaction
@immutable
class PaidReactionTypeAnonymous extends PaidReactionType {
  const PaidReactionTypeAnonymous();

  static const String constructor = 'paidReactionTypeAnonymous';

  static PaidReactionTypeAnonymous? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PaidReactionTypeAnonymous();
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
      (other.runtimeType == runtimeType && other is PaidReactionTypeAnonymous);

  @override
  int get hashCode => runtimeType.hashCode;
}
