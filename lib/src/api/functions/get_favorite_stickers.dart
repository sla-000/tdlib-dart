// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns favorite stickers
/// Returns [Stickers]
@immutable
class GetFavoriteStickers extends TdFunction {
  const GetFavoriteStickers();

  static const String constructor = 'getFavoriteStickers';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType && other is GetFavoriteStickers);

  @override
  int get hashCode => runtimeType.hashCode;
}
