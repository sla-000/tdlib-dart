// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Contains a list of websites the current user is logged in with Telegram
@immutable
class ConnectedWebsites extends TdObject {
  const ConnectedWebsites({
    required this.websites,
  });

  /// [websites] List of connected websites
  final List<ConnectedWebsite> websites;

  static const String constructor = 'connectedWebsites';

  static ConnectedWebsites? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ConnectedWebsites(
      websites: List<ConnectedWebsite>.from(
          ((json['websites'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) =>
                  ConnectedWebsite.fromJson(item as Map<String, dynamic>?))
              .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'websites': websites.map((item) => item.toJson()).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is ConnectedWebsites &&
          const DeepCollectionEquality().equals(other.websites, websites));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(websites)]);
}
