// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Contains a list of advertisements to be shown while a video from a message
/// is watched
@immutable
class VideoMessageAdvertisements extends TdObject {
  const VideoMessageAdvertisements({
    required this.advertisements,
    required this.startDelay,
    required this.betweenDelay,
  });

  /// [advertisements] List of advertisements
  final List<VideoMessageAdvertisement> advertisements;

  /// [startDelay] Delay before the first advertisement is shown, in seconds
  final int startDelay;

  /// [betweenDelay] Delay between consecutive advertisements, in seconds
  final int betweenDelay;

  static const String constructor = 'videoMessageAdvertisements';

  static VideoMessageAdvertisements? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return VideoMessageAdvertisements(
      advertisements: List<VideoMessageAdvertisement>.from(
          ((json['advertisements'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => VideoMessageAdvertisement.fromJson(item))
              .toList()),
      startDelay: json['start_delay'] as int,
      betweenDelay: json['between_delay'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'advertisements': advertisements.map((item) => item.toJson()).toList(),
        'start_delay': startDelay,
        'between_delay': betweenDelay,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is VideoMessageAdvertisements &&
          const DeepCollectionEquality()
              .equals(other.advertisements, advertisements) &&
          const DeepCollectionEquality().equals(other.startDelay, startDelay) &&
          const DeepCollectionEquality()
              .equals(other.betweenDelay, betweenDelay));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(advertisements),
        const DeepCollectionEquality().hash(startDelay),
        const DeepCollectionEquality().hash(betweenDelay)
      ]);
}
