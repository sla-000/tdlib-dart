// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Changes the list of close friends of the current user
/// Returns [Ok]
@immutable
class SetCloseFriends extends TdFunction {
  const SetCloseFriends({
    required this.userIds,
  });

  /// [userIds] User identifiers of close friends; the users must be contacts of
  /// the current user
  final List<int> userIds;

  static const String constructor = 'setCloseFriends';

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
          other is SetCloseFriends &&
          const DeepCollectionEquality().equals(other.userIds, userIds));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(userIds)]);
}
