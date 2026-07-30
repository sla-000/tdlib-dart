// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A bot command, beginning with "/"
@immutable
class TextEntityTypeBotCommand extends TextEntityType {
  const TextEntityTypeBotCommand();

  static const String constructor = 'textEntityTypeBotCommand';

  static TextEntityTypeBotCommand? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const TextEntityTypeBotCommand();
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType && other is TextEntityTypeBotCommand);

  @override
  int get hashCode => runtimeType.hashCode;
}
