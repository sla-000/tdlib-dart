// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A tab with stories posted by the user or the channel chat and saved to
/// profile
@immutable
class ProfileTabPosts extends ProfileTab {
  const ProfileTabPosts();

  static const String constructor = 'profileTabPosts';

  static ProfileTabPosts? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ProfileTabPosts();
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
      (other.runtimeType == runtimeType && other is ProfileTabPosts);

  @override
  int get hashCode => runtimeType.hashCode;
}
