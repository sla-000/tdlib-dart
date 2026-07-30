// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A just ended call
@immutable
class InputCallDiscarded extends InputCall {
  const InputCallDiscarded({
    required this.callId,
  });

  /// [callId] Identifier of the call
  final int callId;

  static const String constructor = 'inputCallDiscarded';

  static InputCallDiscarded? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputCallDiscarded(
      callId: (json['call_id'] as int?) ?? 0,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'call_id': callId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is InputCallDiscarded &&
          const DeepCollectionEquality().equals(other.callId, callId));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(callId)]);
}
