// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Sets the result of a shipping query; for bots only
/// Returns [Ok]
@immutable
class AnswerShippingQuery extends TdFunction {
  const AnswerShippingQuery({
    required this.shippingQueryId,
    required this.shippingOptions,
    required this.errorMessage,
  });

  /// [shippingQueryId] Identifier of the shipping query
  final int shippingQueryId;

  /// [shippingOptions] Available shipping options
  final List<ShippingOption> shippingOptions;

  /// [errorMessage] An error message, empty on success
  final String errorMessage;

  static const String constructor = 'answerShippingQuery';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'shipping_query_id': shippingQueryId,
        'shipping_options':
            shippingOptions.map((item) => item.toJson()).toList(),
        'error_message': errorMessage,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is AnswerShippingQuery &&
          const DeepCollectionEquality()
              .equals(other.shippingQueryId, shippingQueryId) &&
          const DeepCollectionEquality()
              .equals(other.shippingOptions, shippingOptions) &&
          const DeepCollectionEquality()
              .equals(other.errorMessage, errorMessage));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(shippingQueryId),
        const DeepCollectionEquality().hash(shippingOptions),
        const DeepCollectionEquality().hash(errorMessage)
      ]);
}
