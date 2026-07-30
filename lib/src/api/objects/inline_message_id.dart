import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
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
      id: json['id'] as String,
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
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
