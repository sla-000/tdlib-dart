// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The media is unsupported
@immutable
class PaidMediaUnsupported extends PaidMedia {
  const PaidMediaUnsupported();

  static const String constructor = 'paidMediaUnsupported';

  static PaidMediaUnsupported? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PaidMediaUnsupported();
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
      (other.runtimeType == runtimeType && other is PaidMediaUnsupported);

  @override
  int get hashCode => runtimeType.hashCode;
}
