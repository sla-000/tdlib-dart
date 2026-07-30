import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns the list of profile audio files of a user
/// Returns [Audios]
@immutable
class GetUserProfileAudios extends TdFunction {
  const GetUserProfileAudios({
    required this.userId,
    required this.offset,
    required this.limit,
  });

  /// [userId] User identifier
  final int userId;

  /// [offset] The number of audio files to skip; must be non-negative
  final int offset;

  /// [limit] The maximum number of audio files to be returned; up to 100
  final int limit;

  static const String constructor = 'getUserProfileAudios';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'user_id': userId,
        'offset': offset,
        'limit': limit,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
