// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The gift can be sent now by the current user
@immutable
class CanSendGiftResultOk extends CanSendGiftResult {
  const CanSendGiftResultOk();

  static const String constructor = 'canSendGiftResultOk';

  static CanSendGiftResultOk? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const CanSendGiftResultOk();
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
      (other.runtimeType == runtimeType && other is CanSendGiftResultOk);

  @override
  int get hashCode => runtimeType.hashCode;
}
