// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A tab with gifts received by the user or the channel chat
@immutable
class ProfileTabGifts extends ProfileTab {
  const ProfileTabGifts();

  static const String constructor = 'profileTabGifts';

  static ProfileTabGifts? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ProfileTabGifts();
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
      (other.runtimeType == runtimeType && other is ProfileTabGifts);

  @override
  int get hashCode => runtimeType.hashCode;
}
