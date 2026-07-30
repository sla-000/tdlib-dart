// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A document message (a general file)
@immutable
class PushMessageContentDocument extends PushMessageContent {
  const PushMessageContentDocument({
    this.document,
    required this.isPinned,
  });

  /// [document] Message content; may be null
  final Document? document;

  /// [isPinned] True, if the message is a pinned message with the specified
  /// content
  final bool isPinned;

  static const String constructor = 'pushMessageContentDocument';

  static PushMessageContentDocument? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PushMessageContentDocument(
      document: Document.fromJson(json['document'] as Map<String, dynamic>?),
      isPinned: json['is_pinned'] as bool,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'document': document?.toJson(),
        'is_pinned': isPinned,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is PushMessageContentDocument &&
          const DeepCollectionEquality().equals(other.document, document) &&
          const DeepCollectionEquality().equals(other.isPinned, isPinned));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(document),
        const DeepCollectionEquality().hash(isPinned)
      ]);
}
