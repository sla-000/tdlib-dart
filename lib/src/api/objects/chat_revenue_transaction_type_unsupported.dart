import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
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
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
