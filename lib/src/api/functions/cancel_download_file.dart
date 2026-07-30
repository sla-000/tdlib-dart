// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Stops the downloading of a file. If a file has already been downloaded,
/// does nothing
/// Returns [Ok]
@immutable
class CancelDownloadFile extends TdFunction {
  const CancelDownloadFile({
    required this.fileId,
    required this.onlyIfPending,
  });

  /// [fileId] Identifier of a file to stop downloading
  final int fileId;

  /// [onlyIfPending] Pass true to stop downloading only if it hasn't been
  /// started, i.e. request hasn't been sent to server
  final bool onlyIfPending;

  static const String constructor = 'cancelDownloadFile';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'file_id': fileId,
        'only_if_pending': onlyIfPending,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is CancelDownloadFile &&
          const DeepCollectionEquality().equals(other.fileId, fileId) &&
          const DeepCollectionEquality()
              .equals(other.onlyIfPending, onlyIfPending));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(fileId),
        const DeepCollectionEquality().hash(onlyIfPending)
      ]);
}
