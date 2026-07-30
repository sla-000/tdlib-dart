// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Represents an RTMP URL
@immutable
class RtmpUrl extends TdObject {
  const RtmpUrl({
    required this.url,
    required this.streamKey,
  });

  /// [url] The URL
  final String url;

  /// [streamKey] Stream key
  final String streamKey;

  static const String constructor = 'rtmpUrl';

  static RtmpUrl? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return RtmpUrl(
      url: json['url'] as String,
      streamKey: json['stream_key'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'url': url,
        'stream_key': streamKey,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is RtmpUrl &&
          const DeepCollectionEquality().equals(other.url, url) &&
          const DeepCollectionEquality().equals(other.streamKey, streamKey));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(url),
        const DeepCollectionEquality().hash(streamKey)
      ]);
}
