import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents a poll voter
@immutable
class PollVoter extends TdObject {
  const PollVoter({
    required this.voterId,
    required this.date,
  });

  /// [voterId] The voter identifier
  final MessageSender voterId;

  /// [date] Point in time (Unix timestamp) when the vote was added
  final int date;

  static const String constructor = 'pollVoter';

  static PollVoter? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PollVoter(
      voterId:
          MessageSender.fromJson(json['voter_id'] as Map<String, dynamic>?)!,
      date: json['date'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'voter_id': voterId.toJson(),
        'date': date,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
