// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Describes a chat background
@immutable
class Background extends TdObject {
  const Background({
    required this.id,
    required this.isDefault,
    required this.isDark,
    required this.name,
    this.document,
    required this.type,
  });

  /// [id] Unique background identifier
  final int id;

  /// [isDefault] True, if this is one of default backgrounds
  final bool isDefault;

  /// [isDark] True, if the background is dark and is recommended to be used
  /// with dark theme
  final bool isDark;

  /// [name] Unique background name
  final String name;

  /// [document] Document with the background; may be null. Null only for filled
  /// and chat theme backgrounds
  final Document? document;

  /// [type] Type of the background
  final BackgroundType type;

  static const String constructor = 'background';

  static Background? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return Background(
      id: (json['id'] is int
              ? json['id'] as int
              : int.tryParse(json['id']?.toString() ?? '')) ??
          0,
      isDefault: (json['is_default'] as bool?) ?? false,
      isDark: (json['is_dark'] as bool?) ?? false,
      name: (json['name'] as String?) ?? '',
      document: Document.fromJson(json['document'] as Map<String, dynamic>?),
      type: BackgroundType.fromJson(json['type'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id.toString(),
        'is_default': isDefault,
        'is_dark': isDark,
        'name': name,
        'document': document?.toJson(),
        'type': type.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is Background &&
          const DeepCollectionEquality().equals(other.id, id) &&
          const DeepCollectionEquality().equals(other.isDefault, isDefault) &&
          const DeepCollectionEquality().equals(other.isDark, isDark) &&
          const DeepCollectionEquality().equals(other.name, name) &&
          const DeepCollectionEquality().equals(other.document, document) &&
          const DeepCollectionEquality().equals(other.type, type));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(id),
        const DeepCollectionEquality().hash(isDefault),
        const DeepCollectionEquality().hash(isDark),
        const DeepCollectionEquality().hash(name),
        const DeepCollectionEquality().hash(document),
        const DeepCollectionEquality().hash(type)
      ]);
}
