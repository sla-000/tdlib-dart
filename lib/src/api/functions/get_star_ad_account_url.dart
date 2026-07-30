// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns a URL for a Telegram Ad platform account that can be used to set
/// up advertisements for the chat paid in the owned Telegram Stars
/// Returns [HttpUrl]
@immutable
class GetStarAdAccountUrl extends TdFunction {
  const GetStarAdAccountUrl({
    required this.ownerId,
  });

  /// [ownerId] Identifier of the owner of the Telegram Stars; can be identifier
  /// of an owned bot, or identifier of an owned channel chat
  final MessageSender ownerId;

  static const String constructor = 'getStarAdAccountUrl';

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
          other is GetStarAdAccountUrl &&
          const DeepCollectionEquality().equals(other.ownerId, ownerId));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(ownerId)]);
}
