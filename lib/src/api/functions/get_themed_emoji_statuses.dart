// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns up to 8 emoji statuses, which must be shown right after the
/// default Premium Badge in the emoji status list for self status
/// Returns [EmojiStatusCustomEmojis]
@immutable
class GetThemedEmojiStatuses extends TdFunction {
  const GetThemedEmojiStatuses();

  static const String constructor = 'getThemedEmojiStatuses';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType && other is GetThemedEmojiStatuses);

  @override
  int get hashCode => runtimeType.hashCode;
}
