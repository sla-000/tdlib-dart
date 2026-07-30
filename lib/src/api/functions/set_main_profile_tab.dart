import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Changes the main profile tab of the current user
/// Returns [Ok]
@immutable
class SetMainProfileTab extends TdFunction {
  const SetMainProfileTab({
    required this.mainProfileTab,
  });

  /// [mainProfileTab] The new value of the main profile tab
  final ProfileTab mainProfileTab;

  static const String constructor = 'setMainProfileTab';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'main_profile_tab': mainProfileTab.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
