// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns an instant view version of a web page if available. This is an
/// offline method if only_local is true. Returns a 404 error if the web page
/// has no instant view page
/// Returns [WebPageInstantView]
@immutable
class GetWebPageInstantView extends TdFunction {
  const GetWebPageInstantView({
    required this.url,
    required this.onlyLocal,
  });

  /// [url] The web page URL
  final String url;

  /// [onlyLocal] Pass true to get only locally available information without
  /// sending network requests
  final bool onlyLocal;

  static const String constructor = 'getWebPageInstantView';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'url': url,
        'only_local': onlyLocal,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is GetWebPageInstantView &&
          const DeepCollectionEquality().equals(other.url, url) &&
          const DeepCollectionEquality().equals(other.onlyLocal, onlyLocal));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(url),
        const DeepCollectionEquality().hash(onlyLocal)
      ]);
}
