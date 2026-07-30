// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Contains a list of audio files
@immutable
class Audios extends TdObject {
  const Audios({
    required this.totalCount,
    required this.audios,
  });

  /// [totalCount] Approximate total number of audio files found
  final int totalCount;

  /// [audios] List of audio files
  final List<Audio> audios;

  static const String constructor = 'audios';

  static Audios? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return Audios(
      totalCount: (json['total_count'] as int?) ?? 0,
      audios: List<Audio>.from(
          ((json['audios'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => Audio.fromJson(item as Map<String, dynamic>?))
              .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'total_count': totalCount,
        'audios': audios.map((item) => item.toJson()).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is Audios &&
          const DeepCollectionEquality().equals(other.totalCount, totalCount) &&
          const DeepCollectionEquality().equals(other.audios, audios));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(totalCount),
        const DeepCollectionEquality().hash(audios)
      ]);
}
