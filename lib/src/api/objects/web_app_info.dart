import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains information about a Web App
@immutable
class WebAppInfo extends TdObject {
  const WebAppInfo({
    required this.launchId,
    required this.url,
  });

  /// [launchId] Unique identifier for the Web App launch
  final int launchId;

  /// [url] The Web App URL to open in a web view
  final WebAppUrl url;

  static const String constructor = 'webAppInfo';

  static WebAppInfo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return WebAppInfo(
      launchId: int.tryParse(json['launch_id']) ?? 0,
      url: WebAppUrl.fromJson(json['url'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'launch_id': launchId.toString(),
        'url': url.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
