// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Describes an option to report an entity to Telegram
@immutable
class ReportOption extends TdObject {
  const ReportOption({
    required this.id,
    required this.text,
  });

  /// [id] Unique identifier of the option
  final String id;

  /// [text] Text of the option
  final String text;

  static const String constructor = 'reportOption';

  static ReportOption? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ReportOption(
      id: (json['id'] as String?) ?? '',
      text: (json['text'] as String?) ?? '',
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id,
        'text': text,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is ReportOption &&
          const DeepCollectionEquality().equals(other.id, id) &&
          const DeepCollectionEquality().equals(other.text, text));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(id),
        const DeepCollectionEquality().hash(text)
      ]);
}
