// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns information about a file. This is an offline method
/// Returns [File]
@immutable
class GetFile extends TdFunction {
  const GetFile({
    required this.fileId,
  });

  /// [fileId] Identifier of the file to get
  final int fileId;

  static const String constructor = 'getFile';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'file_id': fileId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is GetFile &&
          const DeepCollectionEquality().equals(other.fileId, fileId));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(fileId)]);
}
