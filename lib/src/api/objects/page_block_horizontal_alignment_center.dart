// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The content must be center-aligned
@immutable
class PageBlockHorizontalAlignmentCenter extends PageBlockHorizontalAlignment {
  const PageBlockHorizontalAlignmentCenter();

  static const String constructor = 'pageBlockHorizontalAlignmentCenter';

  static PageBlockHorizontalAlignmentCenter? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PageBlockHorizontalAlignmentCenter();
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
      (other.runtimeType == runtimeType &&
          other is PageBlockHorizontalAlignmentCenter);

  @override
  int get hashCode => runtimeType.hashCode;
}
