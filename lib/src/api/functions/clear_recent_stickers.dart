// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Clears the list of recently used stickers
/// Returns [Ok]
@immutable
class ClearRecentStickers extends TdFunction {
  const ClearRecentStickers({
    required this.isAttached,
  });

  /// [isAttached] Pass true to clear the list of stickers recently attached to
  /// photo or video files; pass false to clear the list of recently sent
  /// stickers
  final bool isAttached;

  static const String constructor = 'clearRecentStickers';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'is_attached': isAttached,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is ClearRecentStickers &&
          const DeepCollectionEquality().equals(other.isAttached, isAttached));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(isAttached)]);
}
