// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The chat contains spam messages
@immutable
class ReportReasonSpam extends ReportReason {
  const ReportReasonSpam();

  static const String constructor = 'reportReasonSpam';

  static ReportReasonSpam? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ReportReasonSpam();
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
      (other.runtimeType == runtimeType && other is ReportReasonSpam);

  @override
  int get hashCode => runtimeType.hashCode;
}
