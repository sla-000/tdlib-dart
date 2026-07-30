// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A graph data
@immutable
class StatisticalGraphData extends StatisticalGraph {
  const StatisticalGraphData({
    required this.jsonData,
    required this.zoomToken,
  });

  /// [jsonData] Graph data in JSON format
  final String jsonData;

  /// [zoomToken] If non-empty, a token which can be used to receive a zoomed in
  /// graph
  final String zoomToken;

  static const String constructor = 'statisticalGraphData';

  static StatisticalGraphData? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StatisticalGraphData(
      jsonData: json['json_data'] as String,
      zoomToken: json['zoom_token'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'json_data': jsonData,
        'zoom_token': zoomToken,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is StatisticalGraphData &&
          const DeepCollectionEquality().equals(other.jsonData, jsonData) &&
          const DeepCollectionEquality().equals(other.zoomToken, zoomToken));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(jsonData),
        const DeepCollectionEquality().hash(zoomToken)
      ]);
}
