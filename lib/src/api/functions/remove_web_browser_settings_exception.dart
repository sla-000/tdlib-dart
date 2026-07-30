import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Removes a special handling for the opening of the specified URL
/// Returns [Ok]
@immutable
class RemoveWebBrowserSettingsException extends TdFunction {
  const RemoveWebBrowserSettingsException({
    required this.url,
  });

  /// [url] URL of the website
  final String url;

  static const String constructor = 'removeWebBrowserSettingsException';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'url': url,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
