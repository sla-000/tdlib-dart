// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A chat invite link
@immutable
class TMeUrlTypeChatInvite extends TMeUrlType {
  const TMeUrlTypeChatInvite({
    required this.info,
  });

  /// [info] Information about the chat invite link
  final ChatInviteLinkInfo info;

  static const String constructor = 'tMeUrlTypeChatInvite';

  static TMeUrlTypeChatInvite? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return TMeUrlTypeChatInvite(
      info: ChatInviteLinkInfo.fromJson(json['info'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'info': info.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is TMeUrlTypeChatInvite &&
          const DeepCollectionEquality().equals(other.info, info));

  @override
  int get hashCode =>
      Object.hashAll([runtimeType, const DeepCollectionEquality().hash(info)]);
}
