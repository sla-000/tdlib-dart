// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Changes the editable username of a business account; for bots only
/// Returns [Ok]
@immutable
class SetBusinessAccountUsername extends TdFunction {
  const SetBusinessAccountUsername({
    required this.businessConnectionId,
    required this.username,
  });

  /// [businessConnectionId] Unique identifier of business connection
  final String businessConnectionId;

  /// [username] The new value of the username
  final String username;

  static const String constructor = 'setBusinessAccountUsername';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'business_connection_id': businessConnectionId,
        'username': username,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is SetBusinessAccountUsername &&
          const DeepCollectionEquality()
              .equals(other.businessConnectionId, businessConnectionId) &&
          const DeepCollectionEquality().equals(other.username, username));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(businessConnectionId),
        const DeepCollectionEquality().hash(username)
      ]);
}
