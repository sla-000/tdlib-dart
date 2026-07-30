// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// File generation is no longer needed
@immutable
class UpdateFileGenerationStop extends Update {
  const UpdateFileGenerationStop({
    required this.generationId,
  });

  /// [generationId] Unique identifier for the generation process
  final int generationId;

  static const String constructor = 'updateFileGenerationStop';

  static UpdateFileGenerationStop? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateFileGenerationStop(
      generationId: (json['generation_id'] is int
              ? json['generation_id'] as int
              : int.tryParse(json['generation_id']?.toString() ?? '')) ??
          0,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'generation_id': generationId.toString(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is UpdateFileGenerationStop &&
          const DeepCollectionEquality()
              .equals(other.generationId, generationId));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(generationId)]);
}
