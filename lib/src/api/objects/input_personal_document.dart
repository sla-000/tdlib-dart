// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A personal document to be saved to Telegram Passport
@immutable
class InputPersonalDocument extends TdObject {
  const InputPersonalDocument({
    required this.files,
    required this.translation,
  });

  /// [files] List of files containing the pages of the document
  final List<InputFile> files;

  /// [translation] List of files containing a certified English translation of
  /// the document
  final List<InputFile> translation;

  static const String constructor = 'inputPersonalDocument';

  static InputPersonalDocument? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputPersonalDocument(
      files: List<InputFile>.from(
          ((json['files'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => InputFile.fromJson(item))
              .toList()),
      translation: List<InputFile>.from(
          ((json['translation'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => InputFile.fromJson(item))
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
          other is InputPersonalDocument &&
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
