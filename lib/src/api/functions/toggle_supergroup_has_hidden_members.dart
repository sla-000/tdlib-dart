// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Toggles whether non-administrators can receive only administrators and
/// bots using getSupergroupMembers or searchChatMembers. Can be called only
/// if supergroupFullInfo.can_hide_members == true
/// Returns [Ok]
@immutable
class ToggleSupergroupHasHiddenMembers extends TdFunction {
  const ToggleSupergroupHasHiddenMembers({
    required this.supergroupId,
    required this.hasHiddenMembers,
  });

  /// [supergroupId] Identifier of the supergroup
  final int supergroupId;

  /// [hasHiddenMembers] New value of has_hidden_members
  final bool hasHiddenMembers;

  static const String constructor = 'toggleSupergroupHasHiddenMembers';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'supergroup_id': supergroupId,
        'has_hidden_members': hasHiddenMembers,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is ToggleSupergroupHasHiddenMembers &&
          const DeepCollectionEquality()
              .equals(other.supergroupId, supergroupId) &&
          const DeepCollectionEquality()
              .equals(other.hasHiddenMembers, hasHiddenMembers));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(supergroupId),
        const DeepCollectionEquality().hash(hasHiddenMembers)
      ]);
}
