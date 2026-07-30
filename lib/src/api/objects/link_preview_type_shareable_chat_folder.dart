// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The link is a link to a shareable chat folder
@immutable
class LinkPreviewTypeShareableChatFolder extends LinkPreviewType {
  const LinkPreviewTypeShareableChatFolder();

  static const String constructor = 'linkPreviewTypeShareableChatFolder';

  static LinkPreviewTypeShareableChatFolder? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const LinkPreviewTypeShareableChatFolder();
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is LinkPreviewTypeShareableChatFolder);

  @override
  int get hashCode => runtimeType.hashCode;
}
