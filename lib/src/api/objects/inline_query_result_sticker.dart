// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Represents a sticker
@immutable
class InlineQueryResultSticker extends InlineQueryResult {
  const InlineQueryResultSticker({
    required this.id,
    required this.sticker,
  });

  /// [id] Unique identifier of the query result
  final String id;

  /// [sticker] Sticker
  final Sticker sticker;

  static const String constructor = 'inlineQueryResultSticker';

  static InlineQueryResultSticker? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InlineQueryResultSticker(
      id: json['id'] as String,
      sticker: Sticker.fromJson(json['sticker'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id,
        'sticker': sticker.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is InlineQueryResultSticker &&
          const DeepCollectionEquality().equals(other.id, id) &&
          const DeepCollectionEquality().equals(other.sticker, sticker));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(id),
        const DeepCollectionEquality().hash(sticker)
      ]);
}
