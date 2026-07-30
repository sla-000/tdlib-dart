// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns the MIME type of a file, guessed by its extension. Returns an
/// empty string on failure. Can be called synchronously
/// Returns [Text]
@immutable
class GetFileMimeType extends TdFunction {
  const GetFileMimeType({
    required this.fileName,
  });

  /// [fileName] The name of the file or path to the file
  final String fileName;

  static const String constructor = 'getFileMimeType';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'file_name': fileName,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is GetFileMimeType &&
          const DeepCollectionEquality().equals(other.fileName, fileName));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(fileName)]);
}
