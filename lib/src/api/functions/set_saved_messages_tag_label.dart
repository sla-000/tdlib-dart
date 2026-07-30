// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Changes label of a Saved Messages tag; for Telegram Premium users only
/// Returns [Ok]
@immutable
class SetSavedMessagesTagLabel extends TdFunction {
  const SetSavedMessagesTagLabel({
    required this.tag,
    required this.label,
  });

  /// [tag] The tag which label will be changed
  final ReactionType tag;

  /// [label] New label for the tag; 0-12 characters
  final String label;

  static const String constructor = 'setSavedMessagesTagLabel';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'tag': tag.toJson(),
        'label': label,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is SetSavedMessagesTagLabel &&
          const DeepCollectionEquality().equals(other.tag, tag) &&
          const DeepCollectionEquality().equals(other.label, label));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(tag),
        const DeepCollectionEquality().hash(label)
      ]);
}
