// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The "Send a gift" section
@immutable
class SettingsSectionSendGift extends SettingsSection {
  const SettingsSectionSendGift({
    required this.subsection,
  });

  /// [subsection] Subsection of the section; may be one of "", "self"
  final String subsection;

  static const String constructor = 'settingsSectionSendGift';

  static SettingsSectionSendGift? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return SettingsSectionSendGift(
      subsection: json['subsection'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'subsection': subsection,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is SettingsSectionSendGift &&
          const DeepCollectionEquality().equals(other.subsection, subsection));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(subsection)]);
}
