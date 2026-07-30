// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Contains a list of available TDLib internal log tags
@immutable
class LogTags extends TdObject {
  const LogTags({
    required this.tags,
  });

  /// [tags] List of log tags
  final List<String> tags;

  static const String constructor = 'logTags';

  static LogTags? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return LogTags(
      tags: List<String>.from(((json['tags'] as List<dynamic>?) ?? <dynamic>[])
          .map((item) => item as String)
          .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'tags': tags.map((item) => item).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is LogTags &&
          const DeepCollectionEquality().equals(other.tags, tags));

  @override
  int get hashCode =>
      Object.hashAll([runtimeType, const DeepCollectionEquality().hash(tags)]);
}
