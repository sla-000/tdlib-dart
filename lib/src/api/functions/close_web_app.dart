// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Informs TDLib that a previously opened Web App was closed
/// Returns [Ok]
@immutable
class CloseWebApp extends TdFunction {
  const CloseWebApp({
    required this.webAppLaunchId,
  });

  /// [webAppLaunchId] Identifier of Web App launch, received from openWebApp
  final int webAppLaunchId;

  static const String constructor = 'closeWebApp';

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
          other is CloseWebApp &&
          const DeepCollectionEquality()
              .equals(other.webAppLaunchId, webAppLaunchId));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(webAppLaunchId)]);
}
