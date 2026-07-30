// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Deletes all call messages
/// Returns [Ok]
@immutable
class DeleteAllCallMessages extends TdFunction {
  const DeleteAllCallMessages({
    required this.revoke,
  });

  /// [revoke] Pass true to delete the messages for all users
  final bool revoke;

  static const String constructor = 'deleteAllCallMessages';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'revoke': revoke,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is DeleteAllCallMessages &&
          const DeepCollectionEquality().equals(other.revoke, revoke));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(revoke)]);
}
