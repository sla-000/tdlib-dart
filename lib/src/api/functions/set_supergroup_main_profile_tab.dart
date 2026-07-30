import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
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
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
