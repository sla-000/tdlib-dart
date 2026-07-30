// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Contains the group call identifier
@immutable
class GroupCallId extends TdObject {
  const GroupCallId({
    required this.id,
  });

  /// [id] Group call identifier
  final int id;

  static const String constructor = 'groupCallId';

  static GroupCallId? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return GroupCallId(
      id: json['id'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is GroupCallId &&
          const DeepCollectionEquality().equals(other.id, id));

  @override
  int get hashCode =>
      Object.hashAll([runtimeType, const DeepCollectionEquality().hash(id)]);
}
