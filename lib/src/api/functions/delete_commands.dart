// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Deletes commands supported by the bot for the given user scope and
/// language; for bots only
/// Returns [Ok]
@immutable
class DeleteCommands extends TdFunction {
  const DeleteCommands({
    this.scope,
    required this.languageCode,
  });

  /// [scope] The scope to which the commands are relevant; pass null to delete
  /// commands in the default bot command scope
  final BotCommandScope? scope;

  /// [languageCode] A two-letter ISO 639-1 language code or an empty string
  final String languageCode;

  static const String constructor = 'deleteCommands';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'scope': scope?.toJson(),
        'language_code': languageCode,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is DeleteCommands &&
          const DeepCollectionEquality().equals(other.scope, scope) &&
          const DeepCollectionEquality()
              .equals(other.languageCode, languageCode));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(scope),
        const DeepCollectionEquality().hash(languageCode)
      ]);
}
