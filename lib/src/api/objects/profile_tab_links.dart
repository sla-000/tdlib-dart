// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A tab with messages posted by the channel and containing links
@immutable
class ProfileTabLinks extends ProfileTab {
  const ProfileTabLinks();

  static const String constructor = 'profileTabLinks';

  static ProfileTabLinks? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ProfileTabLinks();
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
      (other.runtimeType == runtimeType && other is ProfileTabLinks);

  @override
  int get hashCode => runtimeType.hashCode;
}
