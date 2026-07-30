import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes the type of web browser
@immutable
abstract class WebBrowserType extends TdObject {
  const WebBrowserType();

  static const String constructor = 'webBrowserType';

  /// Inherited by:
  /// [WebBrowserTypeExternal]
  /// [WebBrowserTypeInApp]
  static WebBrowserType? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case WebBrowserTypeExternal.constructor:
        return WebBrowserTypeExternal.fromJson(json);
      case WebBrowserTypeInApp.constructor:
        return WebBrowserTypeInApp.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => constructor;

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
