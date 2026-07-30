// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Adds or changes business bot that is connected to the current user account
/// Returns [Ok]
@immutable
class SetBusinessConnectedBot extends TdFunction {
  const SetBusinessConnectedBot({
    required this.bot,
  });

  /// [bot] Connection settings for the bot
  final BusinessConnectedBot bot;

  static const String constructor = 'setBusinessConnectedBot';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'bot': bot.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is SetBusinessConnectedBot &&
          const DeepCollectionEquality().equals(other.bot, bot));

  @override
  int get hashCode =>
      Object.hashAll([runtimeType, const DeepCollectionEquality().hash(bot)]);
}
