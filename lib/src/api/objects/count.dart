// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Contains a counter
@immutable
class Count extends TdObject {
  const Count({
    required this.count,
  });

  /// [count] Count
  final int count;

  static const String constructor = 'count';

  static Count? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return Count(
      count: (json['count'] as int?) ?? 0,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'count': count,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is Count &&
          const DeepCollectionEquality().equals(other.count, count));

  @override
  int get hashCode =>
      Object.hashAll([runtimeType, const DeepCollectionEquality().hash(count)]);
}
