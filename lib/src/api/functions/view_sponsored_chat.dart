// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Informs TDLib that the user fully viewed a sponsored chat
/// Returns [Ok]
@immutable
class ViewSponsoredChat extends TdFunction {
  const ViewSponsoredChat({
    required this.sponsoredChatUniqueId,
  });

  /// [sponsoredChatUniqueId] Unique identifier of the sponsored chat
  final int sponsoredChatUniqueId;

  static const String constructor = 'viewSponsoredChat';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'sponsored_chat_unique_id': sponsoredChatUniqueId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is ViewSponsoredChat &&
          const DeepCollectionEquality()
              .equals(other.sponsoredChatUniqueId, sponsoredChatUniqueId));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(sponsoredChatUniqueId)
      ]);
}
