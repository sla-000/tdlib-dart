// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Represents a part of the text that needs to be formatted in some unusual
/// way
@immutable
class TextEntity extends TdObject {
  const TextEntity({
    required this.offset,
    required this.length,
    required this.type,
  });

  /// [offset] Offset of the entity, in UTF-16 code units
  final int offset;

  /// [length] Length of the entity, in UTF-16 code units
  final int length;

  /// [type] Type of the entity
  final TextEntityType type;

  static const String constructor = 'textEntity';

  static TextEntity? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return TextEntity(
      offset: json['offset'] as int,
      length: json['length'] as int,
      type: TextEntityType.fromJson(json['type'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'offset': offset,
        'length': length,
        'type': type.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is TextEntity &&
          const DeepCollectionEquality().equals(other.offset, offset) &&
          const DeepCollectionEquality().equals(other.length, length) &&
          const DeepCollectionEquality().equals(other.type, type));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(offset),
        const DeepCollectionEquality().hash(length),
        const DeepCollectionEquality().hash(type)
      ]);
}
