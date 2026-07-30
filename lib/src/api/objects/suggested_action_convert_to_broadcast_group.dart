// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Suggests the user to convert specified supergroup to a broadcast group
@immutable
class SuggestedActionConvertToBroadcastGroup extends SuggestedAction {
  const SuggestedActionConvertToBroadcastGroup({
    required this.supergroupId,
  });

  /// [supergroupId] Supergroup identifier
  final int supergroupId;

  static const String constructor = 'suggestedActionConvertToBroadcastGroup';

  static SuggestedActionConvertToBroadcastGroup? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return SuggestedActionConvertToBroadcastGroup(
      supergroupId: json['supergroup_id'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'supergroup_id': supergroupId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is SuggestedActionConvertToBroadcastGroup &&
          const DeepCollectionEquality()
              .equals(other.supergroupId, supergroupId));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(supergroupId)]);
}
