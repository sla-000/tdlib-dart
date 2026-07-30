// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A document (general file)
@immutable
class InputPollMediaDocument extends InputPollMedia {
  const InputPollMediaDocument({
    required this.document,
  });

  /// [document] The document to be sent
  final InputDocument document;

  static const String constructor = 'inputPollMediaDocument';

  static InputPollMediaDocument? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputPollMediaDocument(
      document:
          InputDocument.fromJson(json['document'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'document': document.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is InputPollMediaDocument &&
          const DeepCollectionEquality().equals(other.document, document));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(document)]);
}
