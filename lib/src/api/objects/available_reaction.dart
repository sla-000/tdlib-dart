// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Represents an available reaction
@immutable
class AvailableReaction extends TdObject {
  const AvailableReaction({
    required this.type,
    required this.needsPremium,
  });

  /// [type] Type of the reaction
  final ReactionType type;

  /// [needsPremium] True, if Telegram Premium is needed to send the reaction
  final bool needsPremium;

  static const String constructor = 'availableReaction';

  static AvailableReaction? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return AvailableReaction(
      type: ReactionType.fromJson(json['type'] as Map<String, dynamic>?)!,
      needsPremium: (json['needs_premium'] as bool?) ?? false,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'type': type.toJson(),
        'needs_premium': needsPremium,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is AvailableReaction &&
          const DeepCollectionEquality().equals(other.type, type) &&
          const DeepCollectionEquality()
              .equals(other.needsPremium, needsPremium));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(type),
        const DeepCollectionEquality().hash(needsPremium)
      ]);
}
