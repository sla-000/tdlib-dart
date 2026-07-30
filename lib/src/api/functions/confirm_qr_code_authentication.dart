// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Confirms QR code authentication on another device. Returns created session
/// on success
/// Returns [Session]
@immutable
class ConfirmQrCodeAuthentication extends TdFunction {
  const ConfirmQrCodeAuthentication({
    required this.link,
  });

  /// [link] A link from a QR code. The link must be scanned by the in-app
  /// camera
  final String link;

  static const String constructor = 'confirmQrCodeAuthentication';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'link': link,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is ConfirmQrCodeAuthentication &&
          const DeepCollectionEquality().equals(other.link, link));

  @override
  int get hashCode =>
      Object.hashAll([runtimeType, const DeepCollectionEquality().hash(link)]);
}
