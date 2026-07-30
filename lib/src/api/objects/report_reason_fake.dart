// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The chat represents a fake account
@immutable
class ReportReasonFake extends ReportReason {
  const ReportReasonFake();

  static const String constructor = 'reportReasonFake';

  static ReportReasonFake? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ReportReasonFake();
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
      (other.runtimeType == runtimeType && other is ReportReasonFake);

  @override
  int get hashCode => runtimeType.hashCode;
}
