// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A new incoming query; for bots only
@immutable
class UpdateNewCustomQuery extends Update {
  const UpdateNewCustomQuery({
    required this.id,
    required this.data,
    required this.timeout,
  });

  /// [id] The query identifier
  final int id;

  /// [data] JSON-serialized query data
  final String data;

  /// [timeout] Query timeout
  final int timeout;

  static const String constructor = 'updateNewCustomQuery';

  static UpdateNewCustomQuery? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateNewCustomQuery(
      id: (json['id'] is int
              ? json['id'] as int
              : int.tryParse(json['id']?.toString() ?? '')) ??
          0,
      data: (json['data'] as String?) ?? '',
      timeout: (json['timeout'] as int?) ?? 0,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id.toString(),
        'data': data,
        'timeout': timeout,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is UpdateNewCustomQuery &&
          const DeepCollectionEquality().equals(other.id, id) &&
          const DeepCollectionEquality().equals(other.data, data) &&
          const DeepCollectionEquality().equals(other.timeout, timeout));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(id),
        const DeepCollectionEquality().hash(data),
        const DeepCollectionEquality().hash(timeout)
      ]);
}
