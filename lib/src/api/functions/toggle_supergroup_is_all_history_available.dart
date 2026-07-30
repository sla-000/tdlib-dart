// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Toggles whether the message history of a supergroup is available to new
/// members; requires can_change_info member right
/// Returns [Ok]
@immutable
class ToggleSupergroupIsAllHistoryAvailable extends TdFunction {
  const ToggleSupergroupIsAllHistoryAvailable({
    required this.supergroupId,
    required this.isAllHistoryAvailable,
  });

  /// [supergroupId] The identifier of the supergroup
  final int supergroupId;

  /// [isAllHistoryAvailable] The new value of is_all_history_available
  final bool isAllHistoryAvailable;

  static const String constructor = 'toggleSupergroupIsAllHistoryAvailable';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'supergroup_id': supergroupId,
        'is_all_history_available': isAllHistoryAvailable,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is ToggleSupergroupIsAllHistoryAvailable &&
          const DeepCollectionEquality()
              .equals(other.supergroupId, supergroupId) &&
          const DeepCollectionEquality()
              .equals(other.isAllHistoryAvailable, isAllHistoryAvailable));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(supergroupId),
        const DeepCollectionEquality().hash(isAllHistoryAvailable)
      ]);
}
