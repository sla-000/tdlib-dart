// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The message is from history of a message thread
@immutable
class MessageSourceMessageThreadHistory extends MessageSource {
  const MessageSourceMessageThreadHistory();

  static const String constructor = 'messageSourceMessageThreadHistory';

  static MessageSourceMessageThreadHistory? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const MessageSourceMessageThreadHistory();
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
      (other.runtimeType == runtimeType &&
          other is MessageSourceMessageThreadHistory);

  @override
  int get hashCode => runtimeType.hashCode;
}
