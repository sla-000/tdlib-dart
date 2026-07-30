// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The user can be messaged
@immutable
class CanSendMessageToUserResultOk extends CanSendMessageToUserResult {
  const CanSendMessageToUserResultOk();

  static const String constructor = 'canSendMessageToUserResultOk';

  static CanSendMessageToUserResultOk? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const CanSendMessageToUserResultOk();
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
          other is CanSendMessageToUserResultOk);

  @override
  int get hashCode => runtimeType.hashCode;
}
