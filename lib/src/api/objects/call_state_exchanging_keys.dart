// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The call has been answered and encryption keys are being exchanged
@immutable
class CallStateExchangingKeys extends CallState {
  const CallStateExchangingKeys();

  static const String constructor = 'callStateExchangingKeys';

  static CallStateExchangingKeys? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const CallStateExchangingKeys();
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
      (other.runtimeType == runtimeType && other is CallStateExchangingKeys);

  @override
  int get hashCode => runtimeType.hashCode;
}
