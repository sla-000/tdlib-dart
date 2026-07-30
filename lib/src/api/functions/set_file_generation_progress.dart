// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Informs TDLib on a file generation progress
/// Returns [Ok]
@immutable
class SetFileGenerationProgress extends TdFunction {
  const SetFileGenerationProgress({
    required this.generationId,
    required this.expectedSize,
    required this.localPrefixSize,
  });

  /// [generationId] The identifier of the generation process
  final int generationId;

  /// [expectedSize] Expected size of the generated file, in bytes; 0 if unknown
  final int expectedSize;

  /// [localPrefixSize] The number of bytes already generated
  final int localPrefixSize;

  static const String constructor = 'setFileGenerationProgress';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'generation_id': generationId,
        'expected_size': expectedSize,
        'local_prefix_size': localPrefixSize,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is SetFileGenerationProgress &&
          const DeepCollectionEquality()
              .equals(other.generationId, generationId) &&
          const DeepCollectionEquality()
              .equals(other.expectedSize, expectedSize) &&
          const DeepCollectionEquality()
              .equals(other.localPrefixSize, localPrefixSize));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(generationId),
        const DeepCollectionEquality().hash(expectedSize),
        const DeepCollectionEquality().hash(localPrefixSize)
      ]);
}
