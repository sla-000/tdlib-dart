// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Options to be used when a Web App is opened
@immutable
class WebAppOpenParameters extends TdObject {
  const WebAppOpenParameters({
    this.theme,
    required this.applicationName,
    this.mode,
  });

  /// [theme] Preferred Web App theme; pass null to use the default theme
  final ThemeParameters? theme;

  /// [applicationName] Short name of the current application; 0-64 English
  /// letters, digits, and underscores
  final String applicationName;

  /// [mode] The mode in which the Web App is opened; pass null to open in
  /// webAppOpenModeFullSize
  final WebAppOpenMode? mode;

  static const String constructor = 'webAppOpenParameters';

  static WebAppOpenParameters? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return WebAppOpenParameters(
      theme: ThemeParameters.fromJson(json['theme'] as Map<String, dynamic>?),
      applicationName: (json['application_name'] as String?) ?? '',
      mode: WebAppOpenMode.fromJson(json['mode'] as Map<String, dynamic>?),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'theme': theme?.toJson(),
        'application_name': applicationName,
        'mode': mode?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is WebAppOpenParameters &&
          const DeepCollectionEquality().equals(other.theme, theme) &&
          const DeepCollectionEquality()
              .equals(other.applicationName, applicationName) &&
          const DeepCollectionEquality().equals(other.mode, mode));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(theme),
        const DeepCollectionEquality().hash(applicationName),
        const DeepCollectionEquality().hash(mode)
      ]);
}
