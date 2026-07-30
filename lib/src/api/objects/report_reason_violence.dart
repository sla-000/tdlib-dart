// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The chat promotes violence
@immutable
class ReportReasonViolence extends ReportReason {
  const ReportReasonViolence();

  static const String constructor = 'reportReasonViolence';

  static ReportReasonViolence? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ReportReasonViolence();
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
      (other.runtimeType == runtimeType && other is ReportReasonViolence);

  @override
  int get hashCode => runtimeType.hashCode;
}
