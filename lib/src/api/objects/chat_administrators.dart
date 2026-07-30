// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Represents a list of chat administrators
@immutable
class ChatAdministrators extends TdObject {
  const ChatAdministrators({
    required this.administrators,
  });

  /// [administrators] A list of chat administrators
  final List<ChatAdministrator> administrators;

  static const String constructor = 'chatAdministrators';

  static ChatAdministrators? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatAdministrators(
      administrators: List<ChatAdministrator>.from(
          ((json['administrators'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => ChatAdministrator.fromJson(item))
              .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'administrators': administrators.map((item) => item.toJson()).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is ChatAdministrators &&
          const DeepCollectionEquality()
              .equals(other.administrators, administrators));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(administrators)]);
}
