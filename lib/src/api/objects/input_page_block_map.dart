// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A map. The map's width and height must not exceed 10000 in total. Width
/// and height ratio must be at most 20
@immutable
class InputPageBlockMap extends InputPageBlock {
  const InputPageBlockMap({
    required this.location,
    required this.zoom,
    required this.width,
    required this.height,
    this.caption,
  });

  /// [location] Location of the map center
  final Location location;

  /// [zoom] Map zoom level; 0-24
  final int zoom;

  /// [width] Map width; 0-10000
  final int width;

  /// [height] Map height; 0-10000
  final int height;

  /// [caption] Block caption; pass null if none
  final PageBlockCaption? caption;

  static const String constructor = 'inputPageBlockMap';

  static InputPageBlockMap? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputPageBlockMap(
      location: Location.fromJson(json['location'] as Map<String, dynamic>?)!,
      zoom: (json['zoom'] as int?) ?? 0,
      width: (json['width'] as int?) ?? 0,
      height: (json['height'] as int?) ?? 0,
      caption:
          PageBlockCaption.fromJson(json['caption'] as Map<String, dynamic>?),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'location': location.toJson(),
        'zoom': zoom,
        'width': width,
        'height': height,
        'caption': caption?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is InputPageBlockMap &&
          const DeepCollectionEquality().equals(other.location, location) &&
          const DeepCollectionEquality().equals(other.zoom, zoom) &&
          const DeepCollectionEquality().equals(other.width, width) &&
          const DeepCollectionEquality().equals(other.height, height) &&
          const DeepCollectionEquality().equals(other.caption, caption));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(location),
        const DeepCollectionEquality().hash(zoom),
        const DeepCollectionEquality().hash(width),
        const DeepCollectionEquality().hash(height),
        const DeepCollectionEquality().hash(caption)
      ]);
}
