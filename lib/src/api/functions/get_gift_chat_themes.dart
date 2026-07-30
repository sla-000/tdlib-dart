import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns available to the current user gift chat themes
/// Returns [GiftChatThemes]
@immutable
class GetGiftChatThemes extends TdFunction {
  const GetGiftChatThemes({
    required this.offset,
    required this.limit,
  });

  /// [offset] Offset of the first entry to return as received from the previous
  /// request; use empty string to get the first chunk of results
  final String offset;

  /// [limit] The maximum number of chat themes to return
  final int limit;

  static const String constructor = 'getGiftChatThemes';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'offset': offset,
        'limit': limit,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
