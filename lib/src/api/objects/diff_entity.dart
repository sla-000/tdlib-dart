import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents a change of a text
@immutable
class DiffEntity extends TdObject {
  const DiffEntity({
    required this.offset,
    required this.length,
    required this.type,
  });

  /// [offset] Offset of the entity, in UTF-16 code units
  final int offset;

  /// [length] Length of the entity, in UTF-16 code units
  final int length;

  /// [type] Type of the entity
  final DiffEntityType type;

  static const String constructor = 'diffEntity';

  static DiffEntity? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return DiffEntity(
      offset: json['offset'] as int,
      length: json['length'] as int,
      type: DiffEntityType.fromJson(json['type'] as Map<String, dynamic>?)!,
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
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
