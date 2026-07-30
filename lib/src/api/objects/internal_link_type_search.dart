// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The link is a link to the global chat and messages search field
@immutable
class InternalLinkTypeSearch extends InternalLinkType {
  const InternalLinkTypeSearch();

  static const String constructor = 'internalLinkTypeSearch';

  static InternalLinkTypeSearch? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const InternalLinkTypeSearch();
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
      (other.runtimeType == runtimeType && other is InternalLinkTypeSearch);

  @override
  int get hashCode => runtimeType.hashCode;
}
