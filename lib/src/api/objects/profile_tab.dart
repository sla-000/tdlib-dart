// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Describes a tab shown in a user or a chat profile
@immutable
abstract class ProfileTab extends TdObject {
  const ProfileTab();

  static const String constructor = 'profileTab';

  /// Inherited by:
  /// [ProfileTabFiles]
  /// [ProfileTabGifs]
  /// [ProfileTabGifts]
  /// [ProfileTabLinks]
  /// [ProfileTabMedia]
  /// [ProfileTabMusic]
  /// [ProfileTabPosts]
  /// [ProfileTabVoice]
  static ProfileTab? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case ProfileTabFiles.constructor:
        return ProfileTabFiles.fromJson(json);
      case ProfileTabGifs.constructor:
        return ProfileTabGifs.fromJson(json);
      case ProfileTabGifts.constructor:
        return ProfileTabGifts.fromJson(json);
      case ProfileTabLinks.constructor:
        return ProfileTabLinks.fromJson(json);
      case ProfileTabMedia.constructor:
        return ProfileTabMedia.fromJson(json);
      case ProfileTabMusic.constructor:
        return ProfileTabMusic.fromJson(json);
      case ProfileTabPosts.constructor:
        return ProfileTabPosts.fromJson(json);
      case ProfileTabVoice.constructor:
        return ProfileTabVoice.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => constructor;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType && other is ProfileTab);

  @override
  int get hashCode => runtimeType.hashCode;
}
