// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Fixes a rich message using an AI model. May return an error with a message
/// "AICOMPOSE_FLOOD_PREMIUM" if Telegram Premium is required to send further
/// requests
/// Returns [RichMessage]
@immutable
class FixRichMessageWithAi extends TdFunction {
  const FixRichMessageWithAi({
    required this.message,
  });

  /// [message] The original message
  final InputRichMessage message;

  static const String constructor = 'fixRichMessageWithAi';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'message': message.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is FixRichMessageWithAi &&
          const DeepCollectionEquality().equals(other.message, message));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(message)]);
}
