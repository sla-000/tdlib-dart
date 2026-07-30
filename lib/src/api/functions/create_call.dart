// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Creates a new call
/// Returns [CallId]
@immutable
class CreateCall extends TdFunction {
  const CreateCall({
    required this.userId,
    required this.protocol,
    required this.isVideo,
  });

  /// [userId] Identifier of the user to be called
  final int userId;

  /// [protocol] The call protocols supported by the application
  final CallProtocol protocol;

  /// [isVideo] Pass true to create a video call
  final bool isVideo;

  static const String constructor = 'createCall';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'user_id': userId,
        'protocol': protocol.toJson(),
        'is_video': isVideo,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is CreateCall &&
          const DeepCollectionEquality().equals(other.userId, userId) &&
          const DeepCollectionEquality().equals(other.protocol, protocol) &&
          const DeepCollectionEquality().equals(other.isVideo, isVideo));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(userId),
        const DeepCollectionEquality().hash(protocol),
        const DeepCollectionEquality().hash(isVideo)
      ]);
}
