// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The location-based chat is unrelated to its stated location
@immutable
class ReportReasonUnrelatedLocation extends ReportReason {
  const ReportReasonUnrelatedLocation();

  static const String constructor = 'reportReasonUnrelatedLocation';

  static ReportReasonUnrelatedLocation? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ReportReasonUnrelatedLocation();
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
          other is ReportReasonUnrelatedLocation);

  @override
  int get hashCode => runtimeType.hashCode;
}
