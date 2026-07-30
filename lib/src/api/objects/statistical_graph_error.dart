// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// An error message to be shown to the user instead of the graph
@immutable
class StatisticalGraphError extends StatisticalGraph {
  const StatisticalGraphError({
    required this.errorMessage,
  });

  /// [errorMessage] The error message
  final String errorMessage;

  static const String constructor = 'statisticalGraphError';

  static StatisticalGraphError? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StatisticalGraphError(
      errorMessage: json['error_message'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'error_message': errorMessage,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is StatisticalGraphError &&
          const DeepCollectionEquality()
              .equals(other.errorMessage, errorMessage));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(errorMessage)]);
}
