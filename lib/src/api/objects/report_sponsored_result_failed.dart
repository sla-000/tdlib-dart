// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The sponsored message is too old or not found
@immutable
class ReportSponsoredResultFailed extends ReportSponsoredResult {
  const ReportSponsoredResultFailed();

  static const String constructor = 'reportSponsoredResultFailed';

  static ReportSponsoredResultFailed? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ReportSponsoredResultFailed();
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
          other is ReportSponsoredResultFailed);

  @override
  int get hashCode => runtimeType.hashCode;
}
