// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Represents a list of added proxy servers
@immutable
class AddedProxies extends TdObject {
  const AddedProxies({
    required this.proxies,
  });

  /// [proxies] List of proxy servers
  final List<AddedProxy> proxies;

  static const String constructor = 'addedProxies';

  static AddedProxies? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return AddedProxies(
      proxies: List<AddedProxy>.from(
          ((json['proxies'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => AddedProxy.fromJson(item as Map<String, dynamic>?))
              .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'proxies': proxies.map((item) => item.toJson()).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is AddedProxies &&
          const DeepCollectionEquality().equals(other.proxies, proxies));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(proxies)]);
}
