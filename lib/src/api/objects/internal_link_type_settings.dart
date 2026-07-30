// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The link is a link to application settings
@immutable
class InternalLinkTypeSettings extends InternalLinkType {
  const InternalLinkTypeSettings({
    this.section,
  });

  /// [section] Section of the application settings to open; may be null if none
  final SettingsSection? section;

  static const String constructor = 'internalLinkTypeSettings';

  static InternalLinkTypeSettings? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InternalLinkTypeSettings(
      section:
          SettingsSection.fromJson(json['section'] as Map<String, dynamic>?),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'section': section?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is InternalLinkTypeSettings &&
          const DeepCollectionEquality().equals(other.section, section));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(section)]);
}
