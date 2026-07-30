// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Disconnects website from the current user's Telegram account
/// Returns [Ok]
@immutable
class DisconnectWebsite extends TdFunction {
  const DisconnectWebsite({
    required this.websiteId,
  });

  /// [websiteId] Website identifier
  final int websiteId;

  static const String constructor = 'disconnectWebsite';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'website_id': websiteId.toString(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is DisconnectWebsite &&
          const DeepCollectionEquality().equals(other.websiteId, websiteId));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(websiteId)]);
}
