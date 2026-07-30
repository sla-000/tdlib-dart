// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Contains information about a proxy server added to the list of proxies
@immutable
class AddedProxy extends TdObject {
  const AddedProxy({
    required this.id,
    required this.lastUsedDate,
    required this.isEnabled,
    required this.comment,
    required this.proxy,
  });

  /// [id] Unique identifier of the proxy
  final int id;

  /// [lastUsedDate] Point in time (Unix timestamp) when the proxy was last
  /// used; 0 if never
  final int lastUsedDate;

  /// [isEnabled] True, if the proxy is enabled now
  final bool isEnabled;

  /// [comment] Comment for the proxy added by the user
  final String comment;

  /// [proxy] The proxy
  final Proxy proxy;

  static const String constructor = 'addedProxy';

  static AddedProxy? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return AddedProxy(
      id: json['id'] as int,
      lastUsedDate: json['last_used_date'] as int,
      isEnabled: json['is_enabled'] as bool,
      comment: json['comment'] as String,
      proxy: Proxy.fromJson(json['proxy'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id,
        'last_used_date': lastUsedDate,
        'is_enabled': isEnabled,
        'comment': comment,
        'proxy': proxy.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is AddedProxy &&
          const DeepCollectionEquality().equals(other.id, id) &&
          const DeepCollectionEquality()
              .equals(other.lastUsedDate, lastUsedDate) &&
          const DeepCollectionEquality().equals(other.isEnabled, isEnabled) &&
          const DeepCollectionEquality().equals(other.comment, comment) &&
          const DeepCollectionEquality().equals(other.proxy, proxy));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(id),
        const DeepCollectionEquality().hash(lastUsedDate),
        const DeepCollectionEquality().hash(isEnabled),
        const DeepCollectionEquality().hash(comment),
        const DeepCollectionEquality().hash(proxy)
      ]);
}
