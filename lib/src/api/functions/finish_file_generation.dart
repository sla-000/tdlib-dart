// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Finishes the file generation
/// Returns [Ok]
@immutable
class FinishFileGeneration extends TdFunction {
  const FinishFileGeneration({
    required this.generationId,
    this.error,
  });

  /// [generationId] The identifier of the generation process
  final int generationId;

  /// [error] If passed, the file generation has failed and must be terminated;
  /// pass null if the file generation succeeded
  final TdError? error;

  static const String constructor = 'finishFileGeneration';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'generation_id': generationId,
        'error': error?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is FinishFileGeneration &&
          const DeepCollectionEquality()
              .equals(other.generationId, generationId) &&
          const DeepCollectionEquality().equals(other.error, error));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(generationId),
        const DeepCollectionEquality().hash(error)
      ]);
}
