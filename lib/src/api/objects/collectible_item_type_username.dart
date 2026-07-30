// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A username
@immutable
class CollectibleItemTypeUsername extends CollectibleItemType {
  const CollectibleItemTypeUsername({
    required this.username,
  });

  /// [username] The username
  final String username;

  static const String constructor = 'collectibleItemTypeUsername';

  static CollectibleItemTypeUsername? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return CollectibleItemTypeUsername(
      username: json['username'] as String,
    );
  }

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
          other is CollectibleItemTypeUsername &&
          const DeepCollectionEquality().equals(other.username, username));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(username)]);
}
