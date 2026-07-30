// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Represents a document
@immutable
class InlineQueryResultDocument extends InlineQueryResult {
  const InlineQueryResultDocument({
    required this.id,
    required this.document,
    required this.title,
    required this.description,
  });

  /// [id] Unique identifier of the query result
  final String id;

  /// [document] Document
  final Document document;

  /// [title] Document title
  final String title;

  /// param_[description] Document description
  final String description;

  static const String constructor = 'inlineQueryResultDocument';

  static InlineQueryResultDocument? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InlineQueryResultDocument(
      id: json['id'] as String,
      document: Document.fromJson(json['document'] as Map<String, dynamic>?)!,
      title: json['title'] as String,
      description: json['description'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id,
        'document': document.toJson(),
        'title': title,
        'description': description,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is InlineQueryResultDocument &&
          const DeepCollectionEquality().equals(other.id, id) &&
          const DeepCollectionEquality().equals(other.document, document) &&
          const DeepCollectionEquality().equals(other.title, title) &&
          const DeepCollectionEquality()
              .equals(other.description, description));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(id),
        const DeepCollectionEquality().hash(document),
        const DeepCollectionEquality().hash(title),
        const DeepCollectionEquality().hash(description)
      ]);
}
