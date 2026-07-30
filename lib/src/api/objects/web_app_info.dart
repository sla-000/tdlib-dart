// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
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
      launchId: (json['launch_id'] is int
              ? json['launch_id'] as int
              : int.tryParse(json['launch_id']?.toString() ?? '')) ??
          0,
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
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is WebAppInfo &&
          const DeepCollectionEquality().equals(other.launchId, launchId) &&
          const DeepCollectionEquality().equals(other.url, url));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(launchId),
        const DeepCollectionEquality().hash(url)
      ]);
}
