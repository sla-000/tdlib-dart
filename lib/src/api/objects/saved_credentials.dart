// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Contains information about saved payment credentials
@immutable
class SavedCredentials extends TdObject {
  const SavedCredentials({
    required this.id,
    required this.title,
  });

  /// [id] Unique identifier of the saved credentials
  final String id;

  /// [title] Title of the saved credentials
  final String title;

  static const String constructor = 'savedCredentials';

  static SavedCredentials? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return SavedCredentials(
      id: json['id'] as String,
      title: json['title'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id,
        'title': title,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is SavedCredentials &&
          const DeepCollectionEquality().equals(other.id, id) &&
          const DeepCollectionEquality().equals(other.title, title));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(id),
        const DeepCollectionEquality().hash(title)
      ]);
}
