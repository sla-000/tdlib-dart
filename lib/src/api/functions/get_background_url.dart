// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Constructs a persistent HTTP URL for a background
/// Returns [HttpUrl]
@immutable
class GetBackgroundUrl extends TdFunction {
  const GetBackgroundUrl({
    required this.name,
    required this.type,
  });

  /// [name] Background name
  final String name;

  /// [type] Background type; backgroundTypeChatTheme isn't supported
  final BackgroundType type;

  static const String constructor = 'getBackgroundUrl';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'name': name,
        'type': type.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is GetBackgroundUrl &&
          const DeepCollectionEquality().equals(other.name, name) &&
          const DeepCollectionEquality().equals(other.type, type));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(name),
        const DeepCollectionEquality().hash(type)
      ]);
}
