// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The user connected a website by logging in using Telegram Login Widget on
/// it
@immutable
class BotWriteAccessAllowReasonConnectedWebsite
    extends BotWriteAccessAllowReason {
  const BotWriteAccessAllowReasonConnectedWebsite({
    required this.domainName,
  });

  /// [domainName] Domain name of the connected website
  final String domainName;

  static const String constructor = 'botWriteAccessAllowReasonConnectedWebsite';

  static BotWriteAccessAllowReasonConnectedWebsite? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return BotWriteAccessAllowReasonConnectedWebsite(
      domainName: (json['domain_name'] as String?) ?? '',
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'domain_name': domainName,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is BotWriteAccessAllowReasonConnectedWebsite &&
          const DeepCollectionEquality().equals(other.domainName, domainName));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(domainName)]);
}
