// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The paid reaction in a channel chat
@immutable
class ReactionTypePaid extends ReactionType {
  const ReactionTypePaid();

  static const String constructor = 'reactionTypePaid';

  static ReactionTypePaid? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ReactionTypePaid();
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
      (other.runtimeType == runtimeType && other is ReactionTypePaid);

  @override
  int get hashCode => runtimeType.hashCode;
}
