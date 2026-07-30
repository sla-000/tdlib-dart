// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Contains the call identifier
@immutable
class CallId extends TdObject {
  const CallId({
    required this.id,
  });

  /// [id] Call identifier
  final int id;

  static const String constructor = 'callId';

  static CallId? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return CallId(
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
          other is CallId &&
          const DeepCollectionEquality().equals(other.id, id));

  @override
  int get hashCode =>
      Object.hashAll([runtimeType, const DeepCollectionEquality().hash(id)]);
}
