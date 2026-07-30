// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Writes a part of a generated file. This method is intended to be used only
/// if the application has no direct access to TDLib's file system, because it
/// is usually slower than a direct write to the destination file
/// Returns [Ok]
@immutable
class WriteGeneratedFilePart extends TdFunction {
  const WriteGeneratedFilePart({
    required this.generationId,
    required this.offset,
    required this.data,
  });

  /// [generationId] The identifier of the generation process
  final int generationId;

  /// [offset] The offset from which to write the data to the file
  final int offset;

  /// [data] The data to write
  final String data;

  static const String constructor = 'writeGeneratedFilePart';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'generation_id': generationId.toString(),
        'offset': offset,
        'data': data,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is WriteGeneratedFilePart &&
          const DeepCollectionEquality()
              .equals(other.generationId, generationId) &&
          const DeepCollectionEquality().equals(other.offset, offset) &&
          const DeepCollectionEquality().equals(other.data, data));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(generationId),
        const DeepCollectionEquality().hash(offset),
        const DeepCollectionEquality().hash(data)
      ]);
}
