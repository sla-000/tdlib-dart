// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// An empty block separating a page
@immutable
class PageBlockDivider extends PageBlock {
  const PageBlockDivider();

  static const String constructor = 'pageBlockDivider';

  static PageBlockDivider? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PageBlockDivider();
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
      (other.runtimeType == runtimeType && other is PageBlockDivider);

  @override
  int get hashCode => runtimeType.hashCode;
}
