// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The message was reported successfully
@immutable
class ReportSponsoredResultOk extends ReportSponsoredResult {
  const ReportSponsoredResultOk();

  static const String constructor = 'reportSponsoredResultOk';

  static ReportSponsoredResultOk? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ReportSponsoredResultOk();
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
      (other.runtimeType == runtimeType && other is ReportSponsoredResultOk);

  @override
  int get hashCode => runtimeType.hashCode;
}
