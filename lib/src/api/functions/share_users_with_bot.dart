import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Shares users after pressing a keyboardButtonTypeRequestUsers button with
/// the bot
/// Returns [Ok]
@immutable
class ShareUsersWithBot extends TdFunction {
  const ShareUsersWithBot({
    required this.source,
    required this.buttonId,
    required this.sharedUserIds,
    required this.onlyCheck,
  });

  /// [source] Source of the button
  final KeyboardButtonSource source;

  /// [buttonId] Identifier of the button
  final int buttonId;

  /// [sharedUserIds] Identifiers of the shared users
  final List<int> sharedUserIds;

  /// [onlyCheck] Pass true to check that the users can be shared by the button
  /// instead of actually sharing them
  final bool onlyCheck;

  static const String constructor = 'shareUsersWithBot';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'source': source.toJson(),
        'button_id': buttonId,
        'shared_user_ids': sharedUserIds.map((item) => item).toList(),
        'only_check': onlyCheck,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
