// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Changes the main profile tab of the channel; requires can_change_info
/// administrator right
/// Returns [Ok]
@immutable
class SetSupergroupMainProfileTab extends TdFunction {
  const SetSupergroupMainProfileTab({
    required this.supergroupId,
    required this.mainProfileTab,
  });

  /// [supergroupId] Identifier of the channel
  final int supergroupId;

  /// [mainProfileTab] The new value of the main profile tab
  final ProfileTab mainProfileTab;

  static const String constructor = 'setSupergroupMainProfileTab';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'supergroup_id': supergroupId,
        'main_profile_tab': mainProfileTab.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is SetSupergroupMainProfileTab &&
          const DeepCollectionEquality()
              .equals(other.supergroupId, supergroupId) &&
          const DeepCollectionEquality()
              .equals(other.mainProfileTab, mainProfileTab));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(supergroupId),
        const DeepCollectionEquality().hash(mainProfileTab)
      ]);
}
