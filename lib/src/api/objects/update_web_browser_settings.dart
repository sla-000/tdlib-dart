// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Web browser settings have been updated
@immutable
class UpdateWebBrowserSettings extends Update {
  const UpdateWebBrowserSettings({
    required this.settings,
  });

  /// [settings] New settings
  final WebBrowserSettings settings;

  static const String constructor = 'updateWebBrowserSettings';

  static UpdateWebBrowserSettings? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateWebBrowserSettings(
      settings: WebBrowserSettings.fromJson(
          json['settings'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'settings': settings.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is UpdateWebBrowserSettings &&
          const DeepCollectionEquality().equals(other.settings, settings));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(settings)]);
}
