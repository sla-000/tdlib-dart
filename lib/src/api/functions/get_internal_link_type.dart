// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns information about the type of internal link. Returns a 404 error
/// if the link is not internal. Can be called before authorization
/// Returns [InternalLinkType]
@immutable
class GetInternalLinkType extends TdFunction {
  const GetInternalLinkType({
    required this.link,
  });

  /// [link] The link
  final String link;

  static const String constructor = 'getInternalLinkType';

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
          other is GetInternalLinkType &&
          const DeepCollectionEquality().equals(other.link, link));

  @override
  int get hashCode =>
      Object.hashAll([runtimeType, const DeepCollectionEquality().hash(link)]);
}
