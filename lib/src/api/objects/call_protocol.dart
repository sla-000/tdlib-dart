// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Specifies the supported call protocols
@immutable
class CallProtocol extends TdObject {
  const CallProtocol({
    required this.udpP2p,
    required this.udpReflector,
    required this.minLayer,
    required this.maxLayer,
    required this.libraryVersions,
  });

  /// [udpP2p] True, if UDP peer-to-peer connections are supported
  final bool udpP2p;

  /// [udpReflector] True, if connection through UDP reflectors is supported
  final bool udpReflector;

  /// [minLayer] The minimum supported API layer; use 65
  final int minLayer;

  /// [maxLayer] The maximum supported API layer; use 92
  final int maxLayer;

  /// [libraryVersions] List of supported tgcalls versions
  final List<String> libraryVersions;

  static const String constructor = 'callProtocol';

  static CallProtocol? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return CallProtocol(
      udpP2p: json['udp_p2p'] as bool,
      udpReflector: json['udp_reflector'] as bool,
      minLayer: json['min_layer'] as int,
      maxLayer: json['max_layer'] as int,
      libraryVersions: List<String>.from(
          ((json['library_versions'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => item)
              .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'udp_p2p': udpP2p,
        'udp_reflector': udpReflector,
        'min_layer': minLayer,
        'max_layer': maxLayer,
        'library_versions': libraryVersions.map((item) => item).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is CallProtocol &&
          const DeepCollectionEquality().equals(other.udpP2p, udpP2p) &&
          const DeepCollectionEquality()
              .equals(other.udpReflector, udpReflector) &&
          const DeepCollectionEquality().equals(other.minLayer, minLayer) &&
          const DeepCollectionEquality().equals(other.maxLayer, maxLayer) &&
          const DeepCollectionEquality()
              .equals(other.libraryVersions, libraryVersions));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(udpP2p),
        const DeepCollectionEquality().hash(udpReflector),
        const DeepCollectionEquality().hash(minLayer),
        const DeepCollectionEquality().hash(maxLayer),
        const DeepCollectionEquality().hash(libraryVersions)
      ]);
}
