import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Changes position of an audio file in the profile audio files of the
/// current user
/// Returns [Ok]
@immutable
class SetProfileAudioPosition extends TdFunction {
  const SetProfileAudioPosition({
    required this.fileId,
    required this.afterFileId,
  });

  /// [fileId] Identifier of the file from profile audio files, which position
  /// will be changed
  final int fileId;

  /// [afterFileId] Identifier of the file from profile audio files after which
  /// the file will be positioned; pass 0 to move the file to the beginning of
  /// the list
  final int afterFileId;

  static const String constructor = 'setProfileAudioPosition';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'file_id': fileId,
        'after_file_id': afterFileId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
