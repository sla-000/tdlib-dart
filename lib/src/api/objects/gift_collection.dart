import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
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
      id: json['id'] as int,
      name: json['name'] as String,
      icon: Sticker.fromJson(json['icon'] as Map<String, dynamic>?),
      giftCount: json['gift_count'] as int,
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
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
