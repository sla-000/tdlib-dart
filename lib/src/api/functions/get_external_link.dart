// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns an HTTP URL which can be used to automatically authorize the
/// current user on a website after clicking an HTTP link. Use the method
/// getExternalLinkInfo to find whether a prior user confirmation is needed.
/// May return an empty link if just a toast about successful login has to be
/// shown
/// Returns [HttpUrl]
@immutable
class GetExternalLink extends TdFunction {
  const GetExternalLink({
    required this.link,
    required this.allowWriteAccess,
  });

  /// [link] The HTTP link
  final String link;

  /// [allowWriteAccess] Pass true if the current user allowed the bot that was
  /// returned in getExternalLinkInfo, to send them messages
  final bool allowWriteAccess;

  static const String constructor = 'getExternalLink';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'link': link,
        'allow_write_access': allowWriteAccess,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is GetExternalLink &&
          const DeepCollectionEquality().equals(other.link, link) &&
          const DeepCollectionEquality()
              .equals(other.allowWriteAccess, allowWriteAccess));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(link),
        const DeepCollectionEquality().hash(allowWriteAccess)
      ]);
}
