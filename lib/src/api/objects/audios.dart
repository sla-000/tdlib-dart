import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
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
      totalCount: json['total_count'] as int,
      audios: List<Audio>.from(
          ((json['audios'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => Audio.fromJson(item))
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
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
