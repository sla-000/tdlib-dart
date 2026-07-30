// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Describes collection of gifts
@immutable
class GiftCollection extends TdObject {
  const GiftCollection({
    required this.id,
    required this.name,
    this.icon,
    required this.giftCount,
  });

  /// [id] Unique identifier of the collection
  final int id;

  /// [name] Name of the collection
  final String name;

  /// [icon] Icon of the collection; may be null if none
  final Sticker? icon;

  /// [giftCount] Total number of gifts in the collection
  final int giftCount;

  static const String constructor = 'giftCollection';

  static GiftCollection? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return GiftCollection(
      id: (json['id'] as int?) ?? 0,
      name: (json['name'] as String?) ?? '',
      icon: Sticker.fromJson(json['icon'] as Map<String, dynamic>?),
      giftCount: (json['gift_count'] as int?) ?? 0,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id,
        'name': name,
        'icon': icon?.toJson(),
        'gift_count': giftCount,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is GiftCollection &&
          const DeepCollectionEquality().equals(other.id, id) &&
          const DeepCollectionEquality().equals(other.name, name) &&
          const DeepCollectionEquality().equals(other.icon, icon) &&
          const DeepCollectionEquality().equals(other.giftCount, giftCount));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(id),
        const DeepCollectionEquality().hash(name),
        const DeepCollectionEquality().hash(icon),
        const DeepCollectionEquality().hash(giftCount)
      ]);
}
