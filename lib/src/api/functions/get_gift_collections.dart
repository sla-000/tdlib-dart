// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns collections of gifts owned by the given user or chat
/// Returns [GiftCollections]
@immutable
class GetGiftCollections extends TdFunction {
  const GetGiftCollections({
    required this.ownerId,
  });

  /// [ownerId] Identifier of the user or the channel chat that received the
  /// gifts
  final MessageSender ownerId;

  static const String constructor = 'getGiftCollections';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'owner_id': ownerId.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is GetGiftCollections &&
          const DeepCollectionEquality().equals(other.ownerId, ownerId));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(ownerId)]);
}
