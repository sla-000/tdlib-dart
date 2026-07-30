// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns suggested name for saving a file in a given directory
/// Returns [Text]
@immutable
class GetSuggestedFileName extends TdFunction {
  const GetSuggestedFileName({
    required this.fileId,
    required this.directory,
  });

  /// [fileId] Identifier of the file
  final int fileId;

  /// [directory] Directory in which the file is expected to be saved
  final String directory;

  static const String constructor = 'getSuggestedFileName';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'file_id': fileId,
        'directory': directory,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is GetSuggestedFileName &&
          const DeepCollectionEquality().equals(other.fileId, fileId) &&
          const DeepCollectionEquality().equals(other.directory, directory));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(fileId),
        const DeepCollectionEquality().hash(directory)
      ]);
}
