// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Reports a sponsored chat to Telegram moderators
/// Returns [ReportSponsoredResult]
@immutable
class ReportSponsoredChat extends TdFunction {
  const ReportSponsoredChat({
    required this.sponsoredChatUniqueId,
    required this.optionId,
  });

  /// [sponsoredChatUniqueId] Unique identifier of the sponsored chat
  final int sponsoredChatUniqueId;

  /// [optionId] Option identifier chosen by the user; leave empty for the
  /// initial request
  final String optionId;

  static const String constructor = 'reportSponsoredChat';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'sponsored_chat_unique_id': sponsoredChatUniqueId,
        'option_id': optionId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is ReportSponsoredChat &&
          const DeepCollectionEquality()
              .equals(other.sponsoredChatUniqueId, sponsoredChatUniqueId) &&
          const DeepCollectionEquality().equals(other.optionId, optionId));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(sponsoredChatUniqueId),
        const DeepCollectionEquality().hash(optionId)
      ]);
}
