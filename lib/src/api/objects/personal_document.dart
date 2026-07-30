// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A personal document, containing some information about a user
@immutable
class PersonalDocument extends TdObject {
  const PersonalDocument({
    required this.files,
    required this.translation,
  });

  /// [files] List of files containing the pages of the document
  final List<DatedFile> files;

  /// [translation] List of files containing a certified English translation of
  /// the document
  final List<DatedFile> translation;

  static const String constructor = 'personalDocument';

  static PersonalDocument? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PersonalDocument(
      files: List<DatedFile>.from(
          ((json['files'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => DatedFile.fromJson(item as Map<String, dynamic>?))
              .toList()),
      translation: List<DatedFile>.from(
          ((json['translation'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => DatedFile.fromJson(item as Map<String, dynamic>?))
              .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'files': files.map((item) => item.toJson()).toList(),
        'translation': translation.map((item) => item.toJson()).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is PersonalDocument &&
          const DeepCollectionEquality().equals(other.files, files) &&
          const DeepCollectionEquality()
              .equals(other.translation, translation));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(files),
        const DeepCollectionEquality().hash(translation)
      ]);
}
