// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Contains a list of business chat links created by the user
@immutable
class BusinessChatLinks extends TdObject {
  const BusinessChatLinks({
    required this.links,
  });

  /// [links] List of links
  final List<BusinessChatLink> links;

  static const String constructor = 'businessChatLinks';

  static BusinessChatLinks? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return BusinessChatLinks(
      links: List<BusinessChatLink>.from(
          ((json['links'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) =>
                  BusinessChatLink.fromJson(item as Map<String, dynamic>?))
              .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'links': links.map((item) => item.toJson()).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is BusinessChatLinks &&
          const DeepCollectionEquality().equals(other.links, links));

  @override
  int get hashCode =>
      Object.hashAll([runtimeType, const DeepCollectionEquality().hash(links)]);
}
