// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Adds an audio file to the beginning of the profile audio files of the
/// current user
/// Returns [Ok]
@immutable
class AddProfileAudio extends TdFunction {
  const AddProfileAudio({
    required this.fileId,
  });

  /// [fileId] Identifier of the audio file to be added. The file must have been
  /// uploaded to the server
  final int fileId;

  static const String constructor = 'addProfileAudio';

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
          other is AddProfileAudio &&
          const DeepCollectionEquality().equals(other.fileId, fileId));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(fileId)]);
}
