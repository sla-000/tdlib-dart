// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns information about an action to be done when the current user
/// clicks an external link. Don't use this method for links from secret chats
/// if link preview is disabled in secret chats
/// Returns [LoginUrlInfo]
@immutable
class GetExternalLinkInfo extends TdFunction {
  const GetExternalLinkInfo({
    required this.link,
  });

  /// [link] The link
  final String link;

  static const String constructor = 'getExternalLinkInfo';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'link': link,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is GetExternalLinkInfo &&
          const DeepCollectionEquality().equals(other.link, link));

  @override
  int get hashCode =>
      Object.hashAll([runtimeType, const DeepCollectionEquality().hash(link)]);
}
