// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Describes an unsupported transaction
@immutable
class ChatRevenueTransactionTypeUnsupported extends ChatRevenueTransactionType {
  const ChatRevenueTransactionTypeUnsupported();

  static const String constructor = 'chatRevenueTransactionTypeUnsupported';

  static ChatRevenueTransactionTypeUnsupported? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ChatRevenueTransactionTypeUnsupported();
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
          other is ChatRevenueTransactionTypeUnsupported);

  @override
  int get hashCode => runtimeType.hashCode;
}
