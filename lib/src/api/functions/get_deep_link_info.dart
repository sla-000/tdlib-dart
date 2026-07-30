// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns information about a tg:// deep link. Use
/// "tg://need_update_for_some_feature" or "tg:some_unsupported_feature" for
/// testing. Returns a 404 error for unknown links. Can be called before
/// authorization
/// Returns [DeepLinkInfo]
@immutable
class GetDeepLinkInfo extends TdFunction {
  const GetDeepLinkInfo({
    required this.link,
  });

  /// [link] The link
  final String link;

  static const String constructor = 'getDeepLinkInfo';

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
          other is GetDeepLinkInfo &&
          const DeepCollectionEquality().equals(other.link, link));

  @override
  int get hashCode =>
      Object.hashAll([runtimeType, const DeepCollectionEquality().hash(link)]);
}
