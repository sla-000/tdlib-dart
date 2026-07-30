// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Describes a possibly non-integer Telegram Star amount
@immutable
class StarAmount extends TdObject {
  const StarAmount({
    required this.starCount,
    required this.nanostarCount,
  });

  /// [starCount] The integer Telegram Star amount rounded to 0
  final int starCount;

  /// [nanostarCount] The number of 1/1000000000 shares of Telegram Stars; from
  /// -999999999 to 999999999
  final int nanostarCount;

  static const String constructor = 'starAmount';

  static StarAmount? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StarAmount(
      starCount: json['star_count'] as int,
      nanostarCount: json['nanostar_count'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'star_count': starCount,
        'nanostar_count': nanostarCount,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is StarAmount &&
          const DeepCollectionEquality().equals(other.starCount, starCount) &&
          const DeepCollectionEquality()
              .equals(other.nanostarCount, nanostarCount));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(starCount),
        const DeepCollectionEquality().hash(nanostarCount)
      ]);
}
