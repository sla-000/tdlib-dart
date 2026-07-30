import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The "Ask a question" section
@immutable
class SettingsSectionAskQuestion extends SettingsSection {
  const SettingsSectionAskQuestion();

  static const String constructor = 'settingsSectionAskQuestion';

  static SettingsSectionAskQuestion? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SettingsSectionAskQuestion();
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
