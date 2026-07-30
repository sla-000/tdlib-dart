// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A message with an invoice from a bot
@immutable
class PushMessageContentInvoice extends PushMessageContent {
  const PushMessageContentInvoice({
    required this.price,
    required this.isPinned,
  });

  /// [price] Product price
  final String price;

  /// [isPinned] True, if the message is a pinned message with the specified
  /// content
  final bool isPinned;

  static const String constructor = 'pushMessageContentInvoice';

  static PushMessageContentInvoice? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PushMessageContentInvoice(
      price: (json['price'] as String?) ?? '',
      isPinned: (json['is_pinned'] as bool?) ?? false,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'price': price,
        'is_pinned': isPinned,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is PushMessageContentInvoice &&
          const DeepCollectionEquality().equals(other.price, price) &&
          const DeepCollectionEquality().equals(other.isPinned, isPinned));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(price),
        const DeepCollectionEquality().hash(isPinned)
      ]);
}
