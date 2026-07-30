// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Describes data channel for a group call
@immutable
abstract class GroupCallDataChannel extends TdObject {
  const GroupCallDataChannel();

  static const String constructor = 'groupCallDataChannel';

  /// Inherited by:
  /// [GroupCallDataChannelMain]
  /// [GroupCallDataChannelScreenSharing]
  static GroupCallDataChannel? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case GroupCallDataChannelMain.constructor:
        return GroupCallDataChannelMain.fromJson(json);
      case GroupCallDataChannelScreenSharing.constructor:
        return GroupCallDataChannelScreenSharing.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => constructor;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType && other is GroupCallDataChannel);

  @override
  int get hashCode => runtimeType.hashCode;
}
