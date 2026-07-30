// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns all close friends of the current user
/// Returns [Users]
@immutable
class GetCloseFriends extends TdFunction {
  const GetCloseFriends();

  static const String constructor = 'getCloseFriends';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType && other is GetCloseFriends);

  @override
  int get hashCode => runtimeType.hashCode;
}
