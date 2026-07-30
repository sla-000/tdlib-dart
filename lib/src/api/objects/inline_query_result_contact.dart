// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Represents a user contact
@immutable
class InlineQueryResultContact extends InlineQueryResult {
  const InlineQueryResultContact({
    required this.id,
    required this.contact,
    this.thumbnail,
  });

  /// [id] Unique identifier of the query result
  final String id;

  /// [contact] A user contact
  final Contact contact;

  /// [thumbnail] Result thumbnail in JPEG format; may be null
  final Thumbnail? thumbnail;

  static const String constructor = 'inlineQueryResultContact';

  static InlineQueryResultContact? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InlineQueryResultContact(
      id: (json['id'] as String?) ?? '',
      contact: Contact.fromJson(json['contact'] as Map<String, dynamic>?)!,
      thumbnail: Thumbnail.fromJson(json['thumbnail'] as Map<String, dynamic>?),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id,
        'contact': contact.toJson(),
        'thumbnail': thumbnail?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is InlineQueryResultContact &&
          const DeepCollectionEquality().equals(other.id, id) &&
          const DeepCollectionEquality().equals(other.contact, contact) &&
          const DeepCollectionEquality().equals(other.thumbnail, thumbnail));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(id),
        const DeepCollectionEquality().hash(contact),
        const DeepCollectionEquality().hash(thumbnail)
      ]);
}
