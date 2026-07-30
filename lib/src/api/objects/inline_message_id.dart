// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Contains identifier of a sent guest message
@immutable
class InlineMessageId extends TdObject {
  const InlineMessageId({
    required this.id,
  });

  /// [id] Unique identifier for the message
  final String id;

  static const String constructor = 'inlineMessageId';

  static InlineMessageId? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InlineMessageId(
      id: (json['id'] as String?) ?? '',
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is InlineMessageId &&
          const DeepCollectionEquality().equals(other.id, id));

  @override
  int get hashCode =>
      Object.hashAll([runtimeType, const DeepCollectionEquality().hash(id)]);
}
