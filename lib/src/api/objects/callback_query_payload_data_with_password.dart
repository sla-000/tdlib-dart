// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The payload for a callback button requiring password
@immutable
class CallbackQueryPayloadDataWithPassword extends CallbackQueryPayload {
  const CallbackQueryPayloadDataWithPassword({
    required this.password,
    required this.data,
  });

  /// [password] The 2-step verification password for the current user
  final String password;

  /// [data] Data that was attached to the callback button
  final String data;

  static const String constructor = 'callbackQueryPayloadDataWithPassword';

  static CallbackQueryPayloadDataWithPassword? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return CallbackQueryPayloadDataWithPassword(
      password: (json['password'] as String?) ?? '',
      data: (json['data'] as String?) ?? '',
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'password': password,
        'data': data,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is CallbackQueryPayloadDataWithPassword &&
          const DeepCollectionEquality().equals(other.password, password) &&
          const DeepCollectionEquality().equals(other.data, data));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(password),
        const DeepCollectionEquality().hash(data)
      ]);
}
