// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Contains a number of Telegram Stars
@immutable
class StarCount extends TdObject {
  const StarCount({
    required this.starCount,
  });

  /// [starCount] Number of Telegram Stars
  final int starCount;

  static const String constructor = 'starCount';

  static StarCount? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StarCount(
      starCount: json['star_count'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'star_count': starCount,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is StarCount &&
          const DeepCollectionEquality().equals(other.starCount, starCount));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(starCount)]);
}
