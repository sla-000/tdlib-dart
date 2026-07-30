// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The message is from chat, message thread or forum topic history preview
@immutable
class MessageSourceHistoryPreview extends MessageSource {
  const MessageSourceHistoryPreview();

  static const String constructor = 'messageSourceHistoryPreview';

  static MessageSourceHistoryPreview? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const MessageSourceHistoryPreview();
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
          other is MessageSourceHistoryPreview);

  @override
  int get hashCode => runtimeType.hashCode;
}
