import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes a passkey
@immutable
class Passkey extends TdObject {
  const Passkey({
    required this.id,
    required this.name,
    required this.additionDate,
    required this.lastUsageDate,
    required this.softwareIconCustomEmojiId,
  });

  /// [id] Unique identifier of the passkey
  final String id;

  /// [name] Name of the passkey
  final String name;

  /// [additionDate] Point in time (Unix timestamp) when the passkey was added
  final int additionDate;

  /// [lastUsageDate] Point in time (Unix timestamp) when the passkey was used
  /// last time; 0 if never
  final int lastUsageDate;

  /// [softwareIconCustomEmojiId] Identifier of the custom emoji that is used as
  /// the icon of the software, which created the passkey; 0 if unknown
  final int softwareIconCustomEmojiId;

  static const String constructor = 'passkey';

  static Passkey? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return Passkey(
      id: json['id'] as String,
      name: json['name'] as String,
      additionDate: json['addition_date'] as int,
      lastUsageDate: json['last_usage_date'] as int,
      softwareIconCustomEmojiId:
          int.tryParse(json['software_icon_custom_emoji_id']) ?? 0,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id,
        'name': name,
        'addition_date': additionDate,
        'last_usage_date': lastUsageDate,
        'software_icon_custom_emoji_id': softwareIconCustomEmojiId.toString(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
