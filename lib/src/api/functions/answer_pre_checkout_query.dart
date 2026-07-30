// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Sets the result of a pre-checkout query; for bots only
/// Returns [Ok]
@immutable
class AnswerPreCheckoutQuery extends TdFunction {
  const AnswerPreCheckoutQuery({
    required this.preCheckoutQueryId,
    required this.errorMessage,
  });

  /// [preCheckoutQueryId] Identifier of the pre-checkout query
  final int preCheckoutQueryId;

  /// [errorMessage] An error message, empty on success
  final String errorMessage;

  static const String constructor = 'answerPreCheckoutQuery';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'pre_checkout_query_id': preCheckoutQueryId,
        'error_message': errorMessage,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is AnswerPreCheckoutQuery &&
          const DeepCollectionEquality()
              .equals(other.preCheckoutQueryId, preCheckoutQueryId) &&
          const DeepCollectionEquality()
              .equals(other.errorMessage, errorMessage));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(preCheckoutQueryId),
        const DeepCollectionEquality().hash(errorMessage)
      ]);
}
