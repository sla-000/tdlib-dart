// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The chat contains copyrighted content
@immutable
class ReportReasonCopyright extends ReportReason {
  const ReportReasonCopyright();

  static const String constructor = 'reportReasonCopyright';

  static ReportReasonCopyright? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ReportReasonCopyright();
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
      (other.runtimeType == runtimeType && other is ReportReasonCopyright);

  @override
  int get hashCode => runtimeType.hashCode;
}
