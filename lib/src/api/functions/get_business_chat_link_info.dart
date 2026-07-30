// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns information about a business chat link
/// Returns [BusinessChatLinkInfo]
@immutable
class GetBusinessChatLinkInfo extends TdFunction {
  const GetBusinessChatLinkInfo({
    required this.linkName,
  });

  /// [linkName] Name of the link
  final String linkName;

  static const String constructor = 'getBusinessChatLinkInfo';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'link_name': linkName,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is GetBusinessChatLinkInfo &&
          const DeepCollectionEquality().equals(other.linkName, linkName));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(linkName)]);
}
