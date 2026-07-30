import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns upgraded gifts of the current user who can be used to craft
/// another gifts
/// Returns [GiftsForCrafting]
@immutable
class GetGiftsForCrafting extends TdFunction {
  const GetGiftsForCrafting({
    required this.regularGiftId,
    required this.offset,
    required this.limit,
  });

  /// [regularGiftId] Identifier of the regular gift that will be used for
  /// crafting
  final int regularGiftId;

  /// [offset] Offset of the first entry to return as received from the previous
  /// request; use empty string to get the first chunk of results
  final String offset;

  /// [limit] The maximum number of gifts to be returned; must be positive and
  /// can't be greater than 100. For optimal performance, the number of returned
  /// objects is chosen by TDLib and can be smaller than the specified limit
  final int limit;

  static const String constructor = 'getGiftsForCrafting';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'regular_gift_id': regularGiftId,
        'offset': offset,
        'limit': limit,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
