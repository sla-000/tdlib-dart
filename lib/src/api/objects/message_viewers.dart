// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Represents a list of message viewers
@immutable
class MessageViewers extends TdObject {
  const MessageViewers({
    required this.viewers,
  });

  /// [viewers] List of message viewers
  final List<MessageViewer> viewers;

  static const String constructor = 'messageViewers';

  static MessageViewers? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageViewers(
      viewers: List<MessageViewer>.from(
          ((json['viewers'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => MessageViewer.fromJson(item))
              .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'viewers': viewers.map((item) => item.toJson()).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is MessageViewers &&
          const DeepCollectionEquality().equals(other.viewers, viewers));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(viewers)]);
}
