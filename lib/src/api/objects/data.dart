// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Contains some binary data
@immutable
class Data extends TdObject {
  const Data({
    required this.data,
  });

  /// [data] Data
  final String data;

  static const String constructor = 'data';

  static Data? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return Data(
      data: json['data'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'data': data,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is Data &&
          const DeepCollectionEquality().equals(other.data, data));

  @override
  int get hashCode =>
      Object.hashAll([runtimeType, const DeepCollectionEquality().hash(data)]);
}
