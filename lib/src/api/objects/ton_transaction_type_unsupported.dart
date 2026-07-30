// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The transaction is a transaction of an unsupported type
@immutable
class TonTransactionTypeUnsupported extends TonTransactionType {
  const TonTransactionTypeUnsupported();

  static const String constructor = 'tonTransactionTypeUnsupported';

  static TonTransactionTypeUnsupported? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const TonTransactionTypeUnsupported();
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
      (other.runtimeType == runtimeType &&
          other is TonTransactionTypeUnsupported);

  @override
  int get hashCode => runtimeType.hashCode;
}
