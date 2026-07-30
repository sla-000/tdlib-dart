// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Sponsored messages were hidden for the user in all chats
@immutable
class ReportSponsoredResultAdsHidden extends ReportSponsoredResult {
  const ReportSponsoredResultAdsHidden();

  static const String constructor = 'reportSponsoredResultAdsHidden';

  static ReportSponsoredResultAdsHidden? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ReportSponsoredResultAdsHidden();
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
          other is ReportSponsoredResultAdsHidden);

  @override
  int get hashCode => runtimeType.hashCode;
}
