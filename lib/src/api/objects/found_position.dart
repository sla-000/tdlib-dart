// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Contains 0-based match position
@immutable
class FoundPosition extends TdObject {
  const FoundPosition({
    required this.position,
  });

  /// [position] The position of the match
  final int position;

  static const String constructor = 'foundPosition';

  static FoundPosition? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return FoundPosition(
      position: (json['position'] as int?) ?? 0,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'position': position,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is FoundPosition &&
          const DeepCollectionEquality().equals(other.position, position));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(position)]);
}
