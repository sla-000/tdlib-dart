// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The type of default paid reaction has changed
@immutable
class UpdateDefaultPaidReactionType extends Update {
  const UpdateDefaultPaidReactionType({
    required this.type,
  });

  /// [type] The new type of the default paid reaction
  final PaidReactionType type;

  static const String constructor = 'updateDefaultPaidReactionType';

  static UpdateDefaultPaidReactionType? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateDefaultPaidReactionType(
      type: PaidReactionType.fromJson(json['type'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'type': type.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is UpdateDefaultPaidReactionType &&
          const DeepCollectionEquality().equals(other.type, type));

  @override
  int get hashCode =>
      Object.hashAll([runtimeType, const DeepCollectionEquality().hash(type)]);
}
