// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Answers a custom query; for bots only
/// Returns [Ok]
@immutable
class AnswerCustomQuery extends TdFunction {
  const AnswerCustomQuery({
    required this.customQueryId,
    required this.data,
  });

  /// [customQueryId] Identifier of a custom query
  final int customQueryId;

  /// [data] JSON-serialized answer to the query
  final String data;

  static const String constructor = 'answerCustomQuery';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'custom_query_id': customQueryId.toString(),
        'data': data,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is AnswerCustomQuery &&
          const DeepCollectionEquality()
              .equals(other.customQueryId, customQueryId) &&
          const DeepCollectionEquality().equals(other.data, data));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(customQueryId),
        const DeepCollectionEquality().hash(data)
      ]);
}
