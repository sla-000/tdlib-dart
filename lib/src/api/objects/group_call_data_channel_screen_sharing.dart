// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The data channel for screen sharing
@immutable
class GroupCallDataChannelScreenSharing extends GroupCallDataChannel {
  const GroupCallDataChannelScreenSharing();

  static const String constructor = 'groupCallDataChannelScreenSharing';

  static GroupCallDataChannelScreenSharing? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const GroupCallDataChannelScreenSharing();
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
      (other.runtimeType == runtimeType &&
          other is GroupCallDataChannelScreenSharing);

  @override
  int get hashCode => runtimeType.hashCode;
}
