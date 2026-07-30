// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Sets the result of an inline query; for bots only
/// Returns [Ok]
@immutable
class AnswerInlineQuery extends TdFunction {
  const AnswerInlineQuery({
    required this.inlineQueryId,
    required this.isPersonal,
    this.button,
    required this.results,
    required this.cacheTime,
    required this.nextOffset,
  });

  /// [inlineQueryId] Identifier of the inline query
  final int inlineQueryId;

  /// [isPersonal] Pass true if results may be cached and returned only for the
  /// user who sent the query. By default, results may be returned to any user
  /// who sends the same query
  final bool isPersonal;

  /// [button] Button to be shown above inline query results; pass null if none
  final InlineQueryResultsButton? button;

  /// [results] The results of the query
  final List<InputInlineQueryResult> results;

  /// [cacheTime] Allowed time to cache the results of the query, in seconds
  final int cacheTime;

  /// [nextOffset] Offset for the next inline query; pass an empty string if
  /// there are no more results
  final String nextOffset;

  static const String constructor = 'answerInlineQuery';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'inline_query_id': inlineQueryId,
        'is_personal': isPersonal,
        'button': button?.toJson(),
        'results': results.map((item) => item.toJson()).toList(),
        'cache_time': cacheTime,
        'next_offset': nextOffset,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is AnswerInlineQuery &&
          const DeepCollectionEquality()
              .equals(other.inlineQueryId, inlineQueryId) &&
          const DeepCollectionEquality().equals(other.isPersonal, isPersonal) &&
          const DeepCollectionEquality().equals(other.button, button) &&
          const DeepCollectionEquality().equals(other.results, results) &&
          const DeepCollectionEquality().equals(other.cacheTime, cacheTime) &&
          const DeepCollectionEquality().equals(other.nextOffset, nextOffset));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(inlineQueryId),
        const DeepCollectionEquality().hash(isPersonal),
        const DeepCollectionEquality().hash(button),
        const DeepCollectionEquality().hash(results),
        const DeepCollectionEquality().hash(cacheTime),
        const DeepCollectionEquality().hash(nextOffset)
      ]);
}
