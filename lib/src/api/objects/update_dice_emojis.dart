// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The list of supported dice emojis has changed
@immutable
class UpdateDiceEmojis extends Update {
  const UpdateDiceEmojis({
    required this.emojis,
  });

  /// [emojis] The new list of supported dice emojis
  final List<String> emojis;

  static const String constructor = 'updateDiceEmojis';

  static UpdateDiceEmojis? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateDiceEmojis(
      emojis: List<String>.from(
          ((json['emojis'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => item)
              .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'emojis': emojis.map((item) => item).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is UpdateDiceEmojis &&
          const DeepCollectionEquality().equals(other.emojis, emojis));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(emojis)]);
}
