// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A button that allows the user to create and send a poll when pressed;
/// available only in private chats
@immutable
class KeyboardButtonTypeRequestPoll extends KeyboardButtonType {
  const KeyboardButtonTypeRequestPoll({
    required this.forceRegular,
    required this.forceQuiz,
  });

  /// [forceRegular] If true, only regular polls must be allowed to create
  final bool forceRegular;

  /// [forceQuiz] If true, only polls in quiz mode must be allowed to create
  final bool forceQuiz;

  static const String constructor = 'keyboardButtonTypeRequestPoll';

  static KeyboardButtonTypeRequestPoll? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return KeyboardButtonTypeRequestPoll(
      forceRegular: (json['force_regular'] as bool?) ?? false,
      forceQuiz: (json['force_quiz'] as bool?) ?? false,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'force_regular': forceRegular,
        'force_quiz': forceQuiz,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is KeyboardButtonTypeRequestPoll &&
          const DeepCollectionEquality()
              .equals(other.forceRegular, forceRegular) &&
          const DeepCollectionEquality().equals(other.forceQuiz, forceQuiz));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(forceRegular),
        const DeepCollectionEquality().hash(forceQuiz)
      ]);
}
