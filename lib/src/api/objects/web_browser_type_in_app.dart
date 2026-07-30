// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The in-app browser
@immutable
class WebBrowserTypeInApp extends WebBrowserType {
  const WebBrowserTypeInApp();

  static const String constructor = 'webBrowserTypeInApp';

  static WebBrowserTypeInApp? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const WebBrowserTypeInApp();
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType && other is WebBrowserTypeInApp);

  @override
  int get hashCode => runtimeType.hashCode;
}
