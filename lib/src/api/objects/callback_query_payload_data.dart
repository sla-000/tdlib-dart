// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The payload for a general callback button
@immutable
class CallbackQueryPayloadData extends CallbackQueryPayload {
  const CallbackQueryPayloadData({
    required this.data,
  });

  /// [data] Data that was attached to the callback button
  final String data;

  static const String constructor = 'callbackQueryPayloadData';

  static CallbackQueryPayloadData? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return CallbackQueryPayloadData(
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
          other is CallbackQueryPayloadData &&
          const DeepCollectionEquality().equals(other.data, data));

  @override
  int get hashCode =>
      Object.hashAll([runtimeType, const DeepCollectionEquality().hash(data)]);
}
