// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Contains a list of hashtags
@immutable
class Hashtags extends TdObject {
  const Hashtags({
    required this.hashtags,
  });

  /// [hashtags] A list of hashtags
  final List<String> hashtags;

  static const String constructor = 'hashtags';

  static Hashtags? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return Hashtags(
      hashtags: List<String>.from(
          ((json['hashtags'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => item as String)
              .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'hashtags': hashtags.map((item) => item).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is Hashtags &&
          const DeepCollectionEquality().equals(other.hashtags, hashtags));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(hashtags)]);
}
