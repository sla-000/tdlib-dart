// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The link is a link to boost a Telegram chat. Call getChatBoostLinkInfo
/// with the given URL to process the link. If the chat is found, then call
/// getChatBoostStatus and getAvailableChatBoostSlots to get the current boost
/// status and check whether the chat can be boosted. If the user wants to
/// boost the chat and the chat can be boosted, then call boostChat
@immutable
class InternalLinkTypeChatBoost extends InternalLinkType {
  const InternalLinkTypeChatBoost({
    required this.url,
  });

  /// [url] URL to be passed to getChatBoostLinkInfo
  final String url;

  static const String constructor = 'internalLinkTypeChatBoost';

  static InternalLinkTypeChatBoost? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InternalLinkTypeChatBoost(
      url: json['url'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'url': url,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is InternalLinkTypeChatBoost &&
          const DeepCollectionEquality().equals(other.url, url));

  @override
  int get hashCode =>
      Object.hashAll([runtimeType, const DeepCollectionEquality().hash(url)]);
}
