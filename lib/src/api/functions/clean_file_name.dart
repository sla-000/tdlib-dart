// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Removes potentially dangerous characters from the name of a file. Returns
/// an empty string on failure. Can be called synchronously
/// Returns [Text]
@immutable
class CleanFileName extends TdFunction {
  const CleanFileName({
    required this.fileName,
  });

  /// [fileName] File name or path to the file
  final String fileName;

  static const String constructor = 'cleanFileName';

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
          other is CleanFileName &&
          const DeepCollectionEquality().equals(other.fileName, fileName));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(fileName)]);
}
