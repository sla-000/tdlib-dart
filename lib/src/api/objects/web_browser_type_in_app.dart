import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
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
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
