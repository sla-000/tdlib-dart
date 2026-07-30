// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A tab with photos and videos posted by the channel
@immutable
class ProfileTabMedia extends ProfileTab {
  const ProfileTabMedia();

  static const String constructor = 'profileTabMedia';

  static ProfileTabMedia? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ProfileTabMedia();
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
      (other.runtimeType == runtimeType && other is ProfileTabMedia);

  @override
  int get hashCode => runtimeType.hashCode;
}
