// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Contains a list of chat boost slots
@immutable
class ChatBoostSlots extends TdObject {
  const ChatBoostSlots({
    required this.slots,
  });

  /// [slots] List of boost slots
  final List<ChatBoostSlot> slots;

  static const String constructor = 'chatBoostSlots';

  static ChatBoostSlots? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatBoostSlots(
      slots: List<ChatBoostSlot>.from(((json['slots'] as List<dynamic>?) ??
              <dynamic>[])
          .map((item) => ChatBoostSlot.fromJson(item as Map<String, dynamic>?))
          .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'slots': slots.map((item) => item.toJson()).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is ChatBoostSlots &&
          const DeepCollectionEquality().equals(other.slots, slots));

  @override
  int get hashCode =>
      Object.hashAll([runtimeType, const DeepCollectionEquality().hash(slots)]);
}
