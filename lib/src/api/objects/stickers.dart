// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Represents a list of stickers
@immutable
class Stickers extends TdObject {
  const Stickers({
    required this.stickers,
  });

  /// [stickers] List of stickers
  final List<Sticker> stickers;

  static const String constructor = 'stickers';

  static Stickers? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return Stickers(
      stickers: List<Sticker>.from(
          ((json['stickers'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => Sticker.fromJson(item as Map<String, dynamic>?))
              .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'stickers': stickers.map((item) => item.toJson()).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is Stickers &&
          const DeepCollectionEquality().equals(other.stickers, stickers));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(stickers)]);
}
