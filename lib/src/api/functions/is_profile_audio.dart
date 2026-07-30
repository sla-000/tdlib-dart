import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Checks whether a file is in the profile audio files of the current user.
/// Returns a 404 error if it isn't
/// Returns [Ok]
@immutable
class IsProfileAudio extends TdFunction {
  const IsProfileAudio({
    required this.fileId,
  });

  /// [fileId] Identifier of the audio file to check
  final int fileId;

  static const String constructor = 'isProfileAudio';

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
