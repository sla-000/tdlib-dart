// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A tab with documents posted by the channel
@immutable
class ProfileTabFiles extends ProfileTab {
  const ProfileTabFiles();

  static const String constructor = 'profileTabFiles';

  static ProfileTabFiles? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ProfileTabFiles();
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
      (other.runtimeType == runtimeType && other is ProfileTabFiles);

  @override
  int get hashCode => runtimeType.hashCode;
}
