// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Changes the editable username of the current user
/// Returns [Ok]
@immutable
class SetUsername extends TdFunction {
  const SetUsername({
    required this.username,
  });

  /// [username] The new value of the username. Use an empty string to remove
  /// the username. The username can't be completely removed if there is another
  /// active or disabled username
  final String username;

  static const String constructor = 'setUsername';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'username': username,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is SetUsername &&
          const DeepCollectionEquality().equals(other.username, username));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(username)]);
}
