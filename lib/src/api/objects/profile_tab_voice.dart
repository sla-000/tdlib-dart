// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A tab with voice notes posted by the channel
@immutable
class ProfileTabVoice extends ProfileTab {
  const ProfileTabVoice();

  static const String constructor = 'profileTabVoice';

  static ProfileTabVoice? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ProfileTabVoice();
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
      (other.runtimeType == runtimeType && other is ProfileTabVoice);

  @override
  int get hashCode => runtimeType.hashCode;
}
