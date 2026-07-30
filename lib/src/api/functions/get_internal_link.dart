// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns an HTTPS or a tg: link with the given type. Can be called before
/// authorization
/// Returns [HttpUrl]
@immutable
class GetInternalLink extends TdFunction {
  const GetInternalLink({
    required this.type,
    required this.isHttp,
  });

  /// [type] Expected type of the link
  final InternalLinkType type;

  /// [isHttp] Pass true to create an HTTPS link (only available for some link
  /// types); pass false to create a tg: link
  final bool isHttp;

  static const String constructor = 'getInternalLink';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'type': type.toJson(),
        'is_http': isHttp,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is GetInternalLink &&
          const DeepCollectionEquality().equals(other.type, type) &&
          const DeepCollectionEquality().equals(other.isHttp, isHttp));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(type),
        const DeepCollectionEquality().hash(isHttp)
      ]);
}
