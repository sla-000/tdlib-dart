// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Represents a payload of a callback query
@immutable
abstract class CallbackQueryPayload extends TdObject {
  const CallbackQueryPayload();

  static const String constructor = 'callbackQueryPayload';

  /// Inherited by:
  /// [CallbackQueryPayloadDataWithPassword]
  /// [CallbackQueryPayloadData]
  /// [CallbackQueryPayloadGame]
  static CallbackQueryPayload? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case CallbackQueryPayloadData.constructor:
        return CallbackQueryPayloadData.fromJson(json);
      case CallbackQueryPayloadDataWithPassword.constructor:
        return CallbackQueryPayloadDataWithPassword.fromJson(json);
      case CallbackQueryPayloadGame.constructor:
        return CallbackQueryPayloadGame.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => constructor;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType && other is CallbackQueryPayload);

  @override
  int get hashCode => runtimeType.hashCode;
}
