// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A message was sent by an opened Web App, so the Web App needs to be closed
@immutable
class UpdateWebAppMessageSent extends Update {
  const UpdateWebAppMessageSent({
    required this.webAppLaunchId,
  });

  /// [webAppLaunchId] Identifier of Web App launch
  final int webAppLaunchId;

  static const String constructor = 'updateWebAppMessageSent';

  static UpdateWebAppMessageSent? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateWebAppMessageSent(
      webAppLaunchId: (json['web_app_launch_id'] is int
              ? json['web_app_launch_id'] as int
              : int.tryParse(json['web_app_launch_id']?.toString() ?? '')) ??
          0,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'web_app_launch_id': webAppLaunchId.toString(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is UpdateWebAppMessageSent &&
          const DeepCollectionEquality()
              .equals(other.webAppLaunchId, webAppLaunchId));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(webAppLaunchId)]);
}
