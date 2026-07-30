// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A regular poll
@immutable
class PollTypeRegular extends PollType {
  const PollTypeRegular();

  static const String constructor = 'pollTypeRegular';

  static PollTypeRegular? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PollTypeRegular();
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
      (other.runtimeType == runtimeType && other is PollTypeRegular);

  @override
  int get hashCode => runtimeType.hashCode;
}
