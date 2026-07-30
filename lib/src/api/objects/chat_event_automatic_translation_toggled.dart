// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The has_automatic_translation setting of a channel was toggled
@immutable
class ChatEventAutomaticTranslationToggled extends ChatEventAction {
  const ChatEventAutomaticTranslationToggled({
    required this.hasAutomaticTranslation,
  });

  /// [hasAutomaticTranslation] New value of has_automatic_translation
  final bool hasAutomaticTranslation;

  static const String constructor = 'chatEventAutomaticTranslationToggled';

  static ChatEventAutomaticTranslationToggled? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatEventAutomaticTranslationToggled(
      hasAutomaticTranslation:
          (json['has_automatic_translation'] as bool?) ?? false,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'has_automatic_translation': hasAutomaticTranslation,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is ChatEventAutomaticTranslationToggled &&
          const DeepCollectionEquality()
              .equals(other.hasAutomaticTranslation, hasAutomaticTranslation));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(hasAutomaticTranslation)
      ]);
}
