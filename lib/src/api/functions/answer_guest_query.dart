// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Sets the result of a guest query; for bots only
/// Returns [InlineMessageId]
@immutable
class AnswerGuestQuery extends TdFunction {
  const AnswerGuestQuery({
    required this.guestQueryId,
    required this.result,
  });

  /// [guestQueryId] Identifier of the guest query
  final int guestQueryId;

  /// [result] The result of the query
  final InputInlineQueryResult result;

  static const String constructor = 'answerGuestQuery';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'guest_query_id': guestQueryId.toString(),
        'result': result.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is AnswerGuestQuery &&
          const DeepCollectionEquality()
              .equals(other.guestQueryId, guestQueryId) &&
          const DeepCollectionEquality().equals(other.result, result));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(guestQueryId),
        const DeepCollectionEquality().hash(result)
      ]);
}
