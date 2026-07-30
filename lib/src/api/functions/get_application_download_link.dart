// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns the link for downloading official Telegram application to be used
/// when the current user invites friends to Telegram
/// Returns [HttpUrl]
@immutable
class GetApplicationDownloadLink extends TdFunction {
  const GetApplicationDownloadLink();

  static const String constructor = 'getApplicationDownloadLink';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType && other is GetApplicationDownloadLink);

  @override
  int get hashCode => runtimeType.hashCode;
}
