import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Removes an audio file from the profile audio files of the current user
/// Returns [Ok]
@immutable
class RemoveProfileAudio extends TdFunction {
  const RemoveProfileAudio({
    required this.fileId,
  });

  /// [fileId] Identifier of the audio file to be removed
  final int fileId;

  static const String constructor = 'removeProfileAudio';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'file_id': fileId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
