// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Represents a list of group call streams
@immutable
class GroupCallStreams extends TdObject {
  const GroupCallStreams({
    required this.streams,
  });

  /// [streams] A list of group call streams
  final List<GroupCallStream> streams;

  static const String constructor = 'groupCallStreams';

  static GroupCallStreams? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return GroupCallStreams(
      streams: List<GroupCallStream>.from(
          ((json['streams'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => GroupCallStream.fromJson(item))
              .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'streams': streams.map((item) => item.toJson()).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is GroupCallStreams &&
          const DeepCollectionEquality().equals(other.streams, streams));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(streams)]);
}
