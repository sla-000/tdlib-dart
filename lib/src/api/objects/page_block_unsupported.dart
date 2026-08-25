// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Represents a block unsupported by the current application version
@immutable
class PageBlockUnsupported extends PageBlock {
  const PageBlockUnsupported();

  static const String constructor = 'pageBlockUnsupported';

  static PageBlockUnsupported? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PageBlockUnsupported();
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
      (other.runtimeType == runtimeType && other is PageBlockUnsupported);

  @override
  int get hashCode => runtimeType.hashCode;
}
