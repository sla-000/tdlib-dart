// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The list of attached files contains an error. The error will be considered
/// resolved when the list of files changes
@immutable
class PassportElementErrorSourceFiles extends PassportElementErrorSource {
  const PassportElementErrorSourceFiles();

  static const String constructor = 'passportElementErrorSourceFiles';

  static PassportElementErrorSourceFiles? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PassportElementErrorSourceFiles();
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is PassportElementErrorSourceFiles);

  @override
  int get hashCode => runtimeType.hashCode;
}
