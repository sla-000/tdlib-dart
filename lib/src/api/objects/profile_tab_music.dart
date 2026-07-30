// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A tab with audio messages posted by the channel
@immutable
class ProfileTabMusic extends ProfileTab {
  const ProfileTabMusic();

  static const String constructor = 'profileTabMusic';

  static ProfileTabMusic? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ProfileTabMusic();
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
      (other.runtimeType == runtimeType && other is ProfileTabMusic);

  @override
  int get hashCode => runtimeType.hashCode;
}
