// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Removes users from the contact list
/// Returns [Ok]
@immutable
class RemoveContacts extends TdFunction {
  const RemoveContacts({
    required this.userIds,
  });

  /// [userIds] Identifiers of users to be deleted
  final List<int> userIds;

  static const String constructor = 'removeContacts';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'user_ids': userIds.map((item) => item).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is RemoveContacts &&
          const DeepCollectionEquality().equals(other.userIds, userIds));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(userIds)]);
}
