// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The show_message_sender setting of a channel was toggled
@immutable
class ChatEventShowMessageSenderToggled extends ChatEventAction {
  const ChatEventShowMessageSenderToggled({
    required this.showMessageSender,
  });

  /// [showMessageSender] New value of show_message_sender
  final bool showMessageSender;

  static const String constructor = 'chatEventShowMessageSenderToggled';

  static ChatEventShowMessageSenderToggled? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatEventShowMessageSenderToggled(
      showMessageSender: (json['show_message_sender'] as bool?) ?? false,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'show_message_sender': showMessageSender,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is ChatEventShowMessageSenderToggled &&
          const DeepCollectionEquality()
              .equals(other.showMessageSender, showMessageSender));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(showMessageSender)]);
}
