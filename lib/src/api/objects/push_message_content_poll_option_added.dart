// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// An option was added to a poll
@immutable
class PushMessageContentPollOptionAdded extends PushMessageContent {
  const PushMessageContentPollOptionAdded({
    required this.text,
  });

  /// [text] Text of the option
  final String text;

  static const String constructor = 'pushMessageContentPollOptionAdded';

  static PushMessageContentPollOptionAdded? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PushMessageContentPollOptionAdded(
      text: (json['text'] as String?) ?? '',
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'text': text,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is PushMessageContentPollOptionAdded &&
          const DeepCollectionEquality().equals(other.text, text));

  @override
  int get hashCode =>
      Object.hashAll([runtimeType, const DeepCollectionEquality().hash(text)]);
}
