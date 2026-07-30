// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The call is pending, waiting to be accepted by a user
@immutable
class CallStatePending extends CallState {
  const CallStatePending({
    required this.isCreated,
    required this.isReceived,
  });

  /// [isCreated] True, if the call has already been created by the server
  final bool isCreated;

  /// [isReceived] True, if the call has already been received by the other
  /// party
  final bool isReceived;

  static const String constructor = 'callStatePending';

  static CallStatePending? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return CallStatePending(
      isCreated: (json['is_created'] as bool?) ?? false,
      isReceived: (json['is_received'] as bool?) ?? false,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'is_created': isCreated,
        'is_received': isReceived,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is CallStatePending &&
          const DeepCollectionEquality().equals(other.isCreated, isCreated) &&
          const DeepCollectionEquality().equals(other.isReceived, isReceived));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(isCreated),
        const DeepCollectionEquality().hash(isReceived)
      ]);
}
