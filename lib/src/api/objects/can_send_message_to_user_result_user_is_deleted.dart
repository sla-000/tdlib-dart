// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The user can't be messaged, because they are deleted or unknown
@immutable
class CanSendMessageToUserResultUserIsDeleted
    extends CanSendMessageToUserResult {
  const CanSendMessageToUserResultUserIsDeleted();

  static const String constructor = 'canSendMessageToUserResultUserIsDeleted';

  static CanSendMessageToUserResultUserIsDeleted? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const CanSendMessageToUserResultUserIsDeleted();
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is CanSendMessageToUserResultUserIsDeleted);

  @override
  int get hashCode => runtimeType.hashCode;
}
